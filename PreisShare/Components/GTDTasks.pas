unit GTDTasks;

interface

uses
  {$IFDEF LINUX}
    SysUtils, Types, Classes, Variants, QTypes, QGraphics, QControls, QForms,
    QDialogs, QStdCtrls, DateUtils,QExtCtrls,
  {$ELSE}
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    StdCtrls, ToolWin, ComCtrls, FileCtrl, Db, DbTables, BDE, ShlObj,
    ShellAPI,
    {$IFNDEF HW_SIMPLE} jpeg ,GTDColorButtonList, {$ENDIF}
    extctrls, HCMngr, DiffUnit,
  {$ENDIF}

  GTDBizDocs,

  // -- Indy components
  IdBaseComponent, IdCoder, IdCoder3to4,
  IdCoderMIME, bsSkinBoxCtrls, DosCommand, bsSkinCtrls, SmtpProt, FtpCli,
  bsMessages,bsSkinData, Menus, bsSkinMenus, IdComponent, IdTCPConnection,
  IdTCPClient, IdFTP;

const
    GTTM_NOTIFY_MESSAGE     = WM_APP + 317;
      GTTM_STATUS_IDLE        = 0;
      GTTM_STATUS_STARTING    = 1;
      GTTM_STATUS_SCHDL_START = 2;
      GTTM_STATUS_SCHDL_STOP  = 3;
      GTTM_STATUS_JOB_RUNNING = 4;
      GTTM_STATUS_JOB_SENDING = 5;
      GTTM_STATUS_JOB_DONE    = 6;
      GTTM_STATUS_COMPLETE    = 7;

      GTTM_STATUS_HAVE_RMVBL  = 8;
      GTTM_STATUS_NO_RMVBL    = 9;

    // -- Public operations
    GTTM_START = WM_APP + 305;

    // -- Internal operations
    GTTM_START_SEND = WM_APP + 306;
    GTTM_CLEANUP    = WM_APP + 307;
    GTTM_ERRSTART   = WM_APP + 308;
    GTTM_RUNNEXT    = WM_APP + 309;
    GTTM_FTPEVENT   = WM_APP + 310;
    GTTM_STARTJOB   = WM_APP + 311;

type
  TGTDTaskPanel = class(TFrame)
    DosCommand: TDosCommand;
    mmoReport: TbsSkinMemo;
    bsSkinSpeedButton1: TbsSkinSpeedButton;
    bsSkinSpeedButton2: TbsSkinSpeedButton;
    bsSkinSpeedButton3: TbsSkinSpeedButton;
    SmtpCli1: TSmtpCli;
    bsSkinGauge1: TbsSkinGauge;
    bsSkinMessage1: TbsSkinMessage;
    lstCheckList: TbsSkinListView;
    bsSkinPanel1: TbsSkinPanel;
    bsSkinPopupMenu1: TbsSkinPopupMenu;
    Run1: TMenuItem;
    Stop1: TMenuItem;
    cbxTasks: TbsSkinComboBox;
    btnShowDetails: TbsSkinSpeedButton;
    btnProcess: TbsSkinButton;
    ftpClient: TIdFTP;
    sysTimer: TTimer;
    procedure DosCommandNewLine(Sender: TObject; NewLine: String;
      OutputType: TOutputType);
    procedure DosCommandTerminated(Sender: TObject);
    procedure bsSkinSpeedButton2Click(Sender: TObject);
    procedure bsSkinSpeedButton3Click(Sender: TObject);
    procedure SmtpCli1RequestDone(Sender: TObject; RqType: TSmtpRequest;
      ErrorCode: Word);
    procedure bsSkinSpeedButton4Click(Sender: TObject);
    procedure btnShowDetailsClick(Sender: TObject);
    procedure Run1Click(Sender: TObject);
    procedure btnProcessClick(Sender: TObject);
    procedure IdFTPClientStatus(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: String);
    procedure IdFTPClientAfterClientLogin(Sender: TObject);
    procedure FTPClientDisplay(Sender: TObject; var Msg: String);
    procedure ftpClientStatus(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: String);
    procedure ftpClientAfterClientLogin(Sender: TObject);
    procedure ftpClientWork(Sender: TObject; AWorkMode: TWorkMode;
      const AWorkCount: Integer);
    procedure sysTimerTimer(Sender: TObject);
  private
    { Private declarations }
    fTaskName,
    fProcessName,
    fEmailTemplate,
    fFTPTemplate,
    fFileList,
    fWorkDir,
    fTestEmailDest,
    fMainFile    : String;

    fRunningManual : Boolean;

    fJobList : TStringList;

    fStatusWindow : HWND;

    fSkinData   : TbsSkinData;

    currentDisplayItem : TListItem;
    runningAll,         // Run all jobs flag (as opposed to just one job)
    fDo_Rmvbl_jobs,     // Jobs that exist on the removable drive
    fDo_Normal_jobs,    // Non-Removable and non-Scheduled jobs
    fDo_Schdld_jobs     // Scheduled jobs
                       : Boolean;
     runningItemNumber : Integer;

    procedure SetSkinData(newSkin : TbsSkinData);

    function OkToRunFromSchedule:Boolean;

  published

    property SkinData : TbsSkinData read fSkinData write SetSkinData;
    property TestEmailDest : String read fTestEmailDest write fTestEmailDest;

    property Do_Removeable_Jobs : Boolean read fDo_Rmvbl_jobs write fDo_Rmvbl_jobs;
    property Do_Normal_Jobs : Boolean read fDo_Normal_jobs write fDo_Normal_jobs;
    property Do_Scheduled_Jobs : Boolean read fDo_Schdld_jobs write fDo_Schdld_jobs;

    property Status_Window_Handle : HWND read fStatusWindow write fStatusWindow;

  public
    { Public declarations }
    DocumentRegistry : GTDDocumentRegistry;

    function Load(const TaskName : String):Boolean;
    procedure RunAll;
    function Start:Boolean;
    function Stop:Boolean;
    function StartProcessing:Boolean;
    function StartEmailDespatch:Boolean;
    function StartFTPDespatch:Boolean;
    procedure Report(const Msgtype : String; Const Description : String);

    procedure ProcessStartMessage(var aMsg : TMsg); message GTTM_START;

    // -- Internal stuff
    procedure ProcessNextCommand(var aMsg : TMsg); message GTTM_START_SEND;
    procedure ProcessCleanup(var aMsg : TMsg); message GTTM_CLEANUP;
    procedure ProcessErrorStart(var aMsg : TMsg); message GTTM_ERRSTART;
    procedure ProcessRunNext(var aMsg : TMsg); message GTTM_RUNNEXT;
    procedure ProcessFTP(var aMsg : TMsg); message GTTM_FTPEVENT;
    procedure DisplayJobList;

    procedure EnableJobTimer(Enabled : Boolean);
    procedure CheckForJobsToRun;
    function  CheckToRunJob(ProcessJobName : String):Boolean;
    procedure SetToRunMonthly(ProcessJobName : String; DayNumber, HourValue : Integer);
    procedure SetToRunWeekly(ProcessJobName : String; DayNumber, HourValue : Integer);
    procedure SetToRunDaily(ProcessJobName : String; HourValue : Integer);
    procedure SetToRunHourly(ProcessJobName : String; MinuteValue : Integer);
    procedure SetToRunMinutely(ProcessJobName : String; SecondValue : Integer);

    procedure RegisterJobWindow(ProcessJobName : String; WindowHandle : HWND);
    procedure RegisterStatusWindow(WindowHandle : HWND);

    function  GetJobCount:Integer;

  end;

function DiskInDrive(Drive: Char): Boolean;

implementation

{$R *.DFM}
uses FastStrings, FastStringFuncs,DateUtils;


//---------------------------------------------------------------------------
function TGTDTaskPanel.Load(const TaskName : String):Boolean;
var
    s : String;
    xc : Integer;
begin
    if not Assigned(DocumentRegistry) then
    begin
        Report('Error','Unable to load configuration. Document Registry not assigned');
        Exit;
    end;

    if not DocumentRegistry.GetSettingString('processjob',TaskName,s) then
    begin
        Report('Error','Unable to load configuration. Job details not found');
        Exit;
    end;

    // -- Send a message saying we are starting on this job
    if (fStatusWindow <> 0) then
      PostMessage(fStatusWindow,GTTM_NOTIFY_MESSAGE,GTTM_STATUS_JOB_RUNNING,0);

    if fRunningManual then
    begin
      // -- Exclude Scheduled jobs from the manual run
      DocumentRegistry.GetSettingMemoString('/schedule','frequency',s);
      if Pos(Uppercase(s),'MINUTELY/HOURLY/WEEKLY/DAILY/MONTHLY') <> 0 then
        Exit;
    end
    else begin

      if (fStatusWindow <> 0) then
        PostMessage(fStatusWindow,GTTM_NOTIFY_MESSAGE,GTTM_STATUS_SCHDL_START,0);
        
      // -- Running from schedular, means running manually
      if not OkToRunFromSchedule then
        // -- Not ready to run this now from the schedule
        Exit;
    end;

    // -- Find the task name in the current list
    currentDisplayItem := nil;
    for xc := 0 to lstCheckList.Items.Count-1 do
        if lstCheckList.Items[xc].SubItems[0] = TaskName then
        begin
            fTaskName := TaskName;
            currentDisplayItem := lstCheckList.Items[xc];
            break;
        end;

    // -- Initialisation
    fTaskName := TaskName;
    fProcessName := '';
    fFileList := '';
    fEmailTemplate := '';
    fFTPTemplate := '';
    fMainFile := '';

    // -- Read values from the configuration
    if DocumentRegistry.GetSettingMemoString('/process settings','mainfile',s) then
        fMainFile := s;

    // -- Here we check whether we should be doing removable jobs
    if (Pos('A:',UpperCase(fMainFile)) <> 0) or (Pos('A:',UpperCase(fWorkDir)) <> 0) then
    begin
      if not fDo_Rmvbl_jobs then
      begin
        Report('Show','Skipping Removable job (No Disk) - ' + fTaskName);
        Exit;
      end;
    end;

    if DocumentRegistry.GetSettingMemoString('/process settings','send-method',s) then
    begin
        if s = 'ftp' then
        begin
            if DocumentRegistry.GetSettingMemoString('/process settings','ftpsend-name',s) then
                fFTPTemplate := s;
        end
        else if s = 'email' then
        begin
            if DocumentRegistry.GetSettingMemoString('/process settings','emailsend-name',s) then
                fEmailTemplate := s;
        end;
    end;

    if DocumentRegistry.GetSettingMemoString('/process settings','process',s) then
    begin
        fProcessName := s;
    end;

    // -- Read the working directory
    if DocumentRegistry.GetSettingMemoString('/process settings','working-directory',s) then
    begin
        fWorkDir := s;
    end else
        fWorkDir := '';

    if DocumentRegistry.GetSettingMemoString('/process settings','sendfilelist',s) then
        fFileList := s;

    Result := True;

end;
//---------------------------------------------------------------------------
function TGTDTaskPanel.Start:Boolean;
var
  d : String;
  FilesFound : Boolean;
  sr : TSearchRec;
begin
    if (Pos('*',fmainfile) <> 0) or (Pos('?',fmainfile) <> 0) then
    begin

      d := ExtractFilePath(fmainfile);

      if Length(d) = 0 then
        d := fWorkDir;

      // -- Truncate the path
      if d[Length(d)]='\' then
        d := Copy(d,1,Length(d)-1);
        
      FilesFound := False;

      // -- Wildcard add of files
      if FindFirst(d + '\' + ExtractFileName(fMainFile), faAnyFile, sr) = 0 then
      repeat

        if (FileExists(d + '\' + sr.Name)) then
        begin
          FilesFound := True;
        end;

      until FindNext(sr) <> 0;
      FindClose(sr);

    end
    else
       filesFound := FileExists(fMainfile);

    if not FilesFound then
    begin
        // -- First thing we must do is to check that the primary file exists
//        Report('Show','Skipping Processing Set ' + fTaskName + '. File ' + fMainfile + ' not found');
//        Report('Show','Skipped.');

        // -- Now run the next processing set if any
        PostMessage(Handle,GTTM_RUNNEXT,0,0);
        Exit;
    end
    else
        Report('Show','Starting Processing Set ' + fTaskName);

    Screen.Cursor := crHourglass;

    // -- There might not be a process
    if (fProcessName <> '') then
    begin
        Report('Show','Starting ' + fProcessName);

        // -- Notify that you are running
        if (fStatusWindow <> 0) then
           PostMessage(fStatusWindow,GTTM_NOTIFY_MESSAGE,GTTM_STATUS_JOB_RUNNING,0);

        try
        // -- Setup the process component
        DosCommand.CommandLine := fProcessName;
        DosCommand.Execute;
        except
          on E: Exception do
          begin
            Report('Error',E.Message);
            Report('Show','Error.');
          end;
        end;
    end
    else begin
        PostMessage(Handle,GTTM_START_SEND,0,0);

        // -- Notify that you are busy
        if (fStatusWindow <> 0) then
           PostMessage(fStatusWindow,GTTM_NOTIFY_MESSAGE,GTTM_STATUS_JOB_SENDING,0);
    end;
end;
//---------------------------------------------------------------------------
function TGTDTaskPanel.Stop:Boolean;
begin
end;
//---------------------------------------------------------------------------
function TGTDTaskPanel.StartProcessing:Boolean;
begin
end;
//---------------------------------------------------------------------------
function TGTDTaskPanel.StartEmailDespatch:Boolean;

    function SetupEmailer:Boolean;
    var
       s,e,d,f : String;
       sr : TSearchRec;
    begin
        if not Assigned(DocumentRegistry) then
        begin
            Report('Error','Unable to load configuration. Document Registry not assigned');
            Exit;
        end;

        // -- Load the appropriate configuration record
        if not DocumentRegistry.GetSettingString('emailsend',fEmailTemplate,s) then
        begin
            // -- Might be a new record
            Report('Error','Unable to load configuration. Template not available');
            Exit;
        end
        else begin

            if DocumentRegistry.GetSettingMemoString('/email settings','mailserver',s) then
                SmtpCli1.Host := s
            else
                SmtpCli1.Host := '';

            if DocumentRegistry.GetSettingMemoString('/email settings','login-required',s) then
            begin
                if (s = 'True') then
                begin
                    smtpCli1.AuthType  := smtpAuthLogin;

                    if DocumentRegistry.GetSettingMemoString('/email settings','username',s) then
                        smtpCli1.UserName := s
                    else
                        smtpCli1.UserName := '';

                    if DocumentRegistry.GetSettingMemoString('/email settings','password',s) then
                        smtpCli1.Password := s
                    else
                        smtpCli1.Password := '';
                end
                else
                    smtpCli1.AuthType  := smtpAuthNone;
            end
            else
                smtpCli1.AuthType  := smtpAuthNone;

            if DocumentRegistry.GetSettingMemoString('/email settings','sender',s) then
            begin
                SmtpCli1.FromName:= s;
                SmtpCli1.HdrFrom := s;
            end
            else
                SmtpCli1.HdrFrom := '';

            if fTestEmailDest <> '' then
            begin
                // -- This means that there is a test email target
                //    to which things will go
                SmtpCli1.HdrTo := fTestEmailDest;
                SmtpCli1.RcptName.Clear;
                SmtpCli1.RcptName.Add(fTestEmailDest);
            end
            else begin
                // -- Normal email recipient target
                if DocumentRegistry.GetSettingMemoString('/email settings','recipient',s) then
                begin
                    SmtpCli1.HdrTo := s;
                    SmtpCli1.RcptName.Clear;
                    SmtpCli1.RcptName.Add(s);
                end
                else
                    SmtpCli1.RcptName.Clear;
            end;

            if DocumentRegistry.GetSettingMemoString('/email settings','subject',s) then
                SmtpCli1.HdrSubject := s
            else
                SmtpCli1.HdrSubject := '';

            if DocumentRegistry.GetSettingMemoString('/email settings','bodytext',s) then
            begin
                SmtpCli1.MailMessage.Clear;
                SmtpCli1.MailMessage.Add(s);
            end
            else
                SmtpCli1.MailMessage.Clear;

        end;

        // -- Attach all the files
        if RightStr(fWorkDir,1) <> '\' then
          d := fWorkDir + '\'
        else
          d := fWorkDir;

        s := fFileList;

        SmtpCli1.EmailFiles.Clear;
        // -- Add all existing files
        repeat
            f := Parse(s,#13);
            if (f <> '') then
            begin
              if (Pos('*',f) <> 0) or (Pos('?',f) <> 0) then
              begin
                // -- Wildcard add of files
                if FindFirst(d + f, faAnyFile, sr) = 0 then
                repeat

                  if (FileExists(d + sr.Name)) then
                  begin
                    Report('Show',' - Adding ' + d + '\' + sr.Name);
                    SmtpCli1.EmailFiles.Add(d + sr.Name);
                  end;

                until FindNext(sr) <> 0;
                FindClose(sr);
              end
              else begin
                // -- Here we have a single file
                if (FileExists(d + f)) then
                    SmtpCli1.EmailFiles.Add(d + f)
                else
                    Report('Warning','File not found ' + d + f);
              end;
            end;

        until f = '';

    end;

begin

    SetupEmailer;

    with bsSkinGauge1 do
    begin
        Visible := True;
        Value := 10;
    end;

    SmtpCli1.Connect;

    Report('Show','Commencing sending of files by email');

end;
//---------------------------------------------------------------------------
function TGTDTaskPanel.StartFTPDespatch:Boolean;

    procedure SetupFTP;
    var
       s,e,d : String;
    begin
        if not Assigned(DocumentRegistry) then
        begin
            Report('Error','Unable to load configuration. Document Registry not assigned');
            Exit;
        end;

        // -- Load the appropriate configuration record
        if not DocumentRegistry.GetSettingString('ftpsend',fFTPTemplate,s) then
        begin
            // -- Might be a new record
            Report('Error','Unable to load configuration. Template not available');
            Exit;
        end
        else begin

            if DocumentRegistry.GetSettingMemoString('/ftp settings','ftpserver',s) then
                FTPClient.Host := s
            else
                FTPClient.Host := '';

            if DocumentRegistry.GetSettingMemoString('/ftp settings','username',s) then
                FTPClient.username := s
            else
                FTPClient.username := '';

            if DocumentRegistry.GetSettingMemoString('/ftp settings','password',s) then
                FTPClient.password := s
            else
                FTPClient.password := '';

            // if DocumentRegistry.GetSettingMemoString('/ftp settings','uploaddir',s) then
            //     FTPClient.HostDirName := s
            // else
            //    FTPClient.HostDirName := '';
        end;

    end;

begin
    SetupFTP;

    with bsSkinGauge1 do
    begin
        Visible := True;
        Value := 10;
    end;

//    fFileList := 'd:\Brochure-p1.pdf';

    ftpClient.Connect;

    Report('Show','Commencing sending of files by ftp');

    PostMessage(Handle,GTTM_CLEANUP	,0,0);
end;
//---------------------------------------------------------------------------
procedure TGTDTaskPanel.Report(const Msgtype : String; Const Description : String);
const
  logname = 'Task Log.txt';
var
  f: TextFile;
begin
    AssignFile(f, logname);

    // -- Create the file if it doesn't exist
    if not FileExists(logname) then
      ReWrite(f);

    Append(f);
    Writeln(f, DateTimeToStr(Now) + Chr(9) + MsgType + Chr(9) + Description);

    { insert code here that would require a Flush before closing the file }
    Flush(f);  { ensures that the text was actually written to file }
    CloseFile(f);

    if lstCheckList.Visible then
    begin
        if not bsSkinGauge1.ShowProgressText then
            bsSkinGauge1.ShowProgressText := True;

        bsSkinGauge1.ProgressText := Description;

        if Assigned(currentDisplayItem) then
            currentDisplayItem.SubItems[1] := Description;
    end;

    if (MsgType = 'Clear') then
        mmoReport.Lines.Clear
    else
        mmoReport.Lines.Add(Description);
                              
end;
//---------------------------------------------------------------------------
procedure TGTDTaskPanel.DosCommandNewLine(Sender: TObject;
  NewLine: String; OutputType: TOutputType);
begin
    Report('Show',NewLine);
end;
//---------------------------------------------------------------------------
procedure TGTDTaskPanel.DosCommandTerminated(Sender: TObject);
begin
    Report('Show',fProcessName + ' task finished.');
    PostMessage(Handle,GTTM_START_SEND,0,0);
end;
//---------------------------------------------------------------------------
procedure TGTDTaskPanel.bsSkinSpeedButton2Click(Sender: TObject);
begin
    DosCommand.Stop;
end;
//---------------------------------------------------------------------------
procedure TGTDTaskPanel.bsSkinSpeedButton3Click(Sender: TObject);
begin
    if not Assigned(DocumentRegistry) then
    begin
        Report('Error','Unable to load configuration. Document Registry not assigned');
        Exit;
    end;

  //  DocumentRegistry.GetSettingItemList('processjob',cbxTasks.Items);

end;
//---------------------------------------------------------------------------
procedure TGTDTaskPanel.ProcessNextCommand(var aMsg : TMsg);
begin
    if (fEmailTemplate <> '') then
        StartEmailDespatch
    else if (fFTPTemplate <> '') then
        StartFTPDespatch
    else
        PostMessage(Handle,GTTM_CLEANUP,0,0);
end;
//---------------------------------------------------------------------------
procedure TGTDTaskPanel.ProcessCleanup(var aMsg : TMsg);
var
    f, fl,d : String;
    sr : TSearchRec;
    FilesFound : Boolean;
begin
    Report('Show','Cleaning up.');

    if (Pos('*',fmainfile) <> 0) or (Pos('?',fmainfile) <> 0) then
    begin

      d := ExtractFilePath(fmainfile);

      if Length(d) = 0 then
        d := fWorkDir;

      // -- Truncate the path
      if d[Length(d)]='\' then
        d := Copy(d,1,Length(d)-1);

      FilesFound := False;

      // -- Wildcard add of files
      if FindFirst(d + '\' + ExtractFileName(fMainFile), faAnyFile, sr) = 0 then
      repeat

        if (FileExists(d + '\' + sr.Name)) then
        begin
          DeleteFile(d + '\' + sr.Name);
        end;

      until FindNext(sr) <> 0;
      FindClose(sr);
    end
    else
      // -- Single file, Delete the file
      if FileExists(fMainFile) then
        DeleteFile(fMainFile);

    // -- Do a file cleanup
    if (fFileList <> '') then
    begin
        fl := fFileList;
        f := parse(fl,#13 + #10);
        if (f <> '') then
        begin
            // -- Prepend the working directory
            if (fWorkDir <> '') then
            begin
                if RightStr(fWorkDir,1) <> '\' then
                  f := fWorkDir + '\' + f
                else
                  f := fWorkDir + f;
            end;

            if (Pos('*',f) <> 0) or (Pos('?',f) <> 0) then
            begin
              if RightStr(fWorkDir,1) <> '\' then
                d := fWorkDir + '\'
              else
                d := fWorkDir;

              // -- Wildcard add of files
              if FindFirst(d + fMainFile, faAnyFile, sr) = 0 then
              repeat

                if (FileExists(d + sr.Name)) then
                begin
                  DeleteFile(d + sr.Name);
                end;

              until FindNext(sr) <> 0;
              FindClose(sr);

            end
            else

              // -- Delete the file
              if FileExists(f) then
                  DeleteFile(f);
        end;
    end;


    Report('Show','Job Completed.');

    Screen.Cursor := crDefault;

    PostMessage(Handle,GTTM_RUNNEXT,0,0);

end;
//---------------------------------------------------------------------------
procedure TGTDTaskPanel.ProcessRunNext(var aMsg : TMsg);
var
    p : String;
begin
    if runningAll then
    begin
        // -- Advance to the next item and run that one
        if RunningItemNumber < (lstCheckList.Items.Count-1) then
        begin

            Inc(runningItemNumber);

            lstCheckList.Selected := lstCheckList.Items[RunningItemNumber];

            p := lstCheckList.Selected.SubItems[0];
            if Load(p) then
                Start
            else begin
                // -- Advance to the next entry and try running that
                PostMessage(Handle,GTTM_RUNNEXT,0,0);
            end;

        end
        else begin
            Screen.Cursor := crDefault;
            if (fStatusWindow <> 0) then
            begin
              PostMessage(fStatusWindow,GTTM_NOTIFY_MESSAGE,GTTM_STATUS_COMPLETE,0);
              PostMessage(fStatusWindow,GTTM_NOTIFY_MESSAGE,GTTM_STATUS_IDLE,0);

              if not fRunningManual then
                PostMessage(fStatusWindow,GTTM_NOTIFY_MESSAGE,GTTM_STATUS_SCHDL_STOP,0);
            end;

            runningAll := False;
        end;
    end
    else begin
      Screen.Cursor := crDefault;
      if (fStatusWindow <> 0) then
      begin
          PostMessage(fStatusWindow,GTTM_NOTIFY_MESSAGE,GTTM_STATUS_COMPLETE,0);
          PostMessage(fStatusWindow,GTTM_NOTIFY_MESSAGE,GTTM_STATUS_IDLE,0);
      end;
    end;
end;

procedure TGTDTaskPanel.ProcessErrorStart(var aMsg : TMsg);
begin
    Report('Error','Error starting process.');
    Report('Show','Completed.');
end;

procedure TGTDTaskPanel.SmtpCli1RequestDone(Sender: TObject;
  RqType: TSmtpRequest; ErrorCode: Word);
var
    xc : Integer;
begin
//     if (RqType = smtpConnect) and (ErrorCode = 0) then
//     begin
//        bsSkinGauge1.Value := 10;
//     end
//     else
     if (RqType = smtpAuth) and (ErrorCode = 0) then
     begin
        bsSkinGauge1.Value := 20;
     end
     else
     if (RqType = smtpConnect) and (ErrorCode = 0) then
     begin
        // -- Do the mailing
        Report('SHOW','Connected Successfully.');
        Report('SHOW','Now Mailing files - please wait');
        SmtpCli1.Mail;

        bsSkinGauge1.Value := 40;
     end
     else if (RqType = smtpMail) and (ErrorCode = 0) then
     begin
        bsSkinGauge1.Value := 90;

        // -- Write every entry
        for xc :=1 to SmtpCli1.EmailFiles.Count do
            Report('SENT','Successfully sent ' + SmtpCli1.EmailFiles.Strings[xc-1]);

        SmtpCli1.Quit;

     end
     else if (RqType = smtpQuit) and (ErrorCode = 0) then
     begin
        bsSkinGauge1.Value := 100;
        Report('SHOW','Session closed Successfully');
        Report('COMPLETE','Product Data Mailing Function complete.');

        bsSkinGauge1.Visible := False;

        Report('SHOW','Product Data Mailed Successfully');

    //    SmtpCli1.Quit;
        PostMessage(Handle,GTTM_CLEANUP	,0,0);

     end
     else if (ErrorCode <> 0) then
     begin
        bsSkinGauge1.Visible := False;

        if (ErrorCode = 11004) then
        begin

            if mrYes = bsSkinMessage1.MessageDlg('You are not Connected: Do you want to generate files to manually email anyway?',mtConfirmation,[mbYes, mbNo, mbCancel],0) then
            begin

                bsSkinGauge1.Value := 100;
                bsSkinGauge1.Visible := False;

                Report('NOT SENT','Product Data generated but not sent.');
            end;

        end
        else begin
            // -- Display the error message
            Report('ERROR','Error ' + IntToStr(ErrorCode) + ' encountered');
        end;

        PostMessage(Handle,GTTM_CLEANUP,0,0);

     end;
end;

procedure TGTDTaskPanel.SetSkinData(newSkin : TbsSkinData);
begin
    bsSkinPanel1.SkinData := newSkin;
    mmoReport.SkinData := newSkin;
    bsSkinGauge1.SkinData := newSkin;
    lstCheckList.SkinData := newSkin;
    btnShowDetails.SkinData := newSkin;
    btnProcess.SkinData := newSkin;
end;

procedure TGTDTaskPanel.DisplayJobList;

    procedure LoadDetails(anItem : TListItem; taskName : String);
    var
        s : String;
    begin
        // -- Load up the record
        if not DocumentRegistry.GetSettingString('processjob',TaskName,s) then
        begin
            Report('Error','Unable to load configuration. Job details not found');
            Exit;
        end;

        if DocumentRegistry.GetSettingMemoString('/process settings','mainfile',s) then
            anItem.Caption := s;

        anItem.SubItems.Add(taskName);
        anItem.SubItems.Add('Ready');

    end;

var
    anItem : TlistItem;
    xc : Integer;
begin
    if not Assigned(DocumentRegistry) then
    begin
        Report('Error','Unable to load configuration. Document Registry not assigned');
        Exit;
    end;

    DocumentRegistry.GetSettingItemList('processjob',cbxTasks.Items);

    // -- Load up all the details into the list
    lstCheckList.Items.Clear;
    for xc := 1 to cbxTasks.Items.count do
    begin
        anItem := lstCheckList.Items.Add;

        LoadDetails(anItem,cbxTasks.Items[xc-1]);

    end;

end;

procedure TGTDTaskPanel.bsSkinSpeedButton4Click(Sender: TObject);
begin
    DisplayJobList;
end;

procedure TGTDTaskPanel.btnShowDetailsClick(Sender: TObject);
begin
    if lstCheckList.Visible then
    begin
        lstCheckList.Visible := False;
        btnShowDetails.Caption := 'Details : On';
    end
    else begin
        lstCheckList.Visible := True;
        btnShowDetails.Caption := 'Details : Off';
    end;
end;

procedure TGTDTaskPanel.ProcessStartMessage(var aMsg : TMsg);
begin
  RunAll;
end;

procedure TGTDTaskPanel.RunAll;
var
    xc : Integer;
    anItem : TListItem;
    p : String;
begin

    runningAll := True;
    runningItemNumber := 0;

    Screen.Cursor := crHourglass;

    // -- Notify that you are running
    if (fStatusWindow <> 0) then
       PostMessage(fStatusWindow,GTTM_NOTIFY_MESSAGE,GTTM_STATUS_STARTING,GTTM_STATUS_STARTING);

    // -- Here we check if there is a diskette and if there
    //    isn't then disable the removeable drive running portion
    if fRunningManual or fDo_Rmvbl_jobs then
    begin
      if DiskInDrive('A') then
      begin
        Do_Removeable_Jobs := True;
        Report('Show','Processing Disk found in Drive A:');

        if (fStatusWindow <> 0) then
          PostMessage(fStatusWindow,GTTM_NOTIFY_MESSAGE,GTTM_STATUS_HAVE_RMVBL,0);

      end
      else begin
        Do_Removeable_Jobs := False;
        Report('Show','No Diskette found in Drive A:');

        if (fStatusWindow <> 0) then
          PostMessage(fStatusWindow,GTTM_NOTIFY_MESSAGE,GTTM_STATUS_NO_RMVBL,0);
      end;
    end
    else
      // -- If not running manual, make no attempt to do
      //    jobs on the removable drive.
      Do_Removeable_Jobs := False;

    if lstCheckList.Items.Count <> 0 then
    begin
        anItem := lstCheckList.Items[0];
        lstCheckList.Selected := anItem;

        p := anItem.SubItems[0];
        if Load(p) then
            Start
        else
            PostMessage(Handle,GTTM_RUNNEXT,0,0);
    end
    else
      Screen.Cursor := crDefault;
end;

procedure TGTDTaskPanel.Run1Click(Sender: TObject);
begin
    runningAll := False;

    if Assigned(lstCheckList.Selected) then
    begin
        if not Load(lstCheckList.Selected.SubItems[0]) then
            Exit;

        Start;
    end;
end;

procedure TGTDTaskPanel.btnProcessClick(Sender: TObject);
begin
    // -- Toggle to manual operation. Excludes all jobs
    //    that are configured to run from the schedular.
    fRunningManual := True;

    RunAll;
end;

procedure TGTDTaskPanel.IdFTPClientStatus(ASender: TObject;
  const AStatus: TIdStatus; const AStatusText: String);
begin
    Report('ftp',AStatusText);

    case AStatus of

        hsResolving:        bsSkinGauge1.Value := 5;
        hsConnecting:       bsSkinGauge1.Value := 10;
        hsConnected:        bsSkinGauge1.Value := 15;
        hsDisconnecting:    bsSkinGauge1.Value := 95;
        hsDisconnected:     bsSkinGauge1.Value := 100;
        hsStatusText:       ;
        ftpTransfer:        ;
        ftpReady:           PostMessage(Handle,GTTM_FTPEVENT,0,0);
    end;

end;

procedure TGTDTaskPanel.IdFTPClientAfterClientLogin(Sender: TObject);
begin
    PostMessage(Handle,GTTM_FTPEVENT,0,0);
end;

procedure TGTDTaskPanel.FTPClientDisplay(Sender: TObject; var Msg: String);
begin
    Report('Show',Msg);
end;

procedure TGTDTaskPanel.ftpClientStatus(ASender: TObject;
  const AStatus: TIdStatus; const AStatusText: String);
begin
    Report('Show',AStatusText);

    case AStatus of
        hsResolving:        bsSkinGauge1.Value := 5;
        hsConnecting:       bsSkinGauge1.Value := 10;
        hsConnected:        bsSkinGauge1.Value := 15;
        hsDisconnecting:    bsSkinGauge1.Value := 95;
        ftpTransfer:        Report('SHOW','Uploading Files');
        ftpReady:           // -- Tell the component to send the next file
                            PostMessage(Handle,GTTM_FTPEVENT,0,0);
        hsDisconnected:     begin
                              bsSkinGauge1.Value := 100;
                              Report('COMPLETE','FTP Upload Complete');
                              PostMessage(Handle,GTTM_RUNNEXT,0,0);
                            end;
    end;

end;

procedure TGTDTaskPanel.ftpClientAfterClientLogin(Sender: TObject);
begin                     
    PostMessage(Handle,GTTM_FTPEVENT,0,0);
end;

procedure TGTDTaskPanel.ProcessFTP(var aMsg : TMsg);
var
    fname : String;
begin
    if (fFileList <> '') then
    begin
        Report('Show','Uploading ' + fFileList);

        // -- Put the full path
        fname := fFileList;
        if ExtractFilePath(fname) = '' then
          fname := fWorkDir + '\' + fname;

        // -- Upload the file
        ftpClient.Put(fname);
        fFileList := '';
    end
    else
        ftpClient.Quit;
end;

procedure TGTDTaskPanel.ftpClientWork(Sender: TObject;
  AWorkMode: TWorkMode; const AWorkCount: Integer);
begin
//    Report('Show','Uploading ' + IntToStr(AWorkCount) + '%');
end;

procedure TGTDTaskPanel.sysTimerTimer(Sender: TObject);
begin
  // -- Fire off the timer
  // Report('Show','Checking for jobs to run');

  // -- Skip this if already running something
  if runningAll then
    Exit;

  fRunningManual := False;

  CheckForJobsToRun;

end;

procedure TGTDTaskPanel.EnableJobTimer(Enabled : Boolean);
begin
  sysTimer.Enabled := Enabled;
end;

procedure TGTDTaskPanel.CheckForJobsToRun;
begin
  RunAll;
end;

function  TGTDTaskPanel.CheckToRunJob(ProcessJobName : String):Boolean;
begin
end;

procedure TGTDTaskPanel.SetToRunMonthly(ProcessJobName : String; DayNumber, HourValue : Integer);
begin
end;

procedure TGTDTaskPanel.SetToRunWeekly(ProcessJobName : String; DayNumber, HourValue : Integer);
begin
end;

procedure TGTDTaskPanel.SetToRunDaily(ProcessJobName : String; HourValue : Integer);
begin
end;

procedure TGTDTaskPanel.SetToRunHourly(ProcessJobName : String; MinuteValue : Integer);
begin
end;

procedure TGTDTaskPanel.SetToRunMinutely(ProcessJobName : String; SecondValue : Integer);
begin
end;

procedure TGTDTaskPanel.RegisterJobWindow(ProcessJobName : String; WindowHandle : HWND);
begin
  if not Assigned(fJobList) then
    fJobList := TStringList.Create;

  // -- Add the job
  fJobList.AddObject(ProcessJobName,TObject(WindowHandle));

end;

procedure TGTDTaskPanel.RegisterStatusWindow(WindowHandle : HWND);
begin
    fStatusWindow := WindowHandle;
end;

function TGTDTaskPanel.OkToRunFromSchedule:Boolean;
var
  v,fr : String;
  hh,mm,ss,ms,xc,
  h1,m1 : Word;
  nr,lr : TDateTime;
begin
    // -- Determine if the task is scheduled
    DocumentRegistry.GetSettingMemoString('/schedule','frequency',fr);

    // -- Get the last time the job was run
    lr := 0;
    DocumentRegistry.GetSettingMemoDateTime('/schedule','last_run',lr);

    if (AnsiCompareText(fr,'Minutely')=0) then
    begin
      // -- This only runs at the changeover
      if (lr = 0) or (DateOf(lr) < Today) then
      begin
        DocumentRegistry.SaveSettingMemoDateTime('/schedule','last_run',Now);
        Result := True
      end
      else begin

        Result := False;

        // -- Decode the time now
        DecodeTime(Now,hh,mm,ss,ms);

        // -- Decode the time of the last run
        DecodeTime(lr,hh,xc,ss,ms);

        // -- If it is not the same minute then run
        if (xc <> mm) then
        begin

          DocumentRegistry.SaveSettingMemoDateTime('/schedule','last_run',Now);

          // -- Mark this entry as ready to run
          Result := True;

        end;

      end;

    end
    // -- Do a time check on daily jobs
    else if (AnsiCompareText(fr,'Daily')=0) then
    begin

      Result := False;

      // -- If it has run today then exit
      if (DateOf(lr) = Today) then
        Exit;

      // -- Decode the time now
      DecodeTime(Now,hh,mm,ss,ms);

      // -- Decode the time of the last run
      DecodeTime(lr,h1,m1,ss,ms);

      // -- Hasn't been run today
      DocumentRegistry.GetSettingMemoString('/schedule','time',v);

      xc := Pos(':',v);
      if (xc <> 0) then
      begin
        h1 := StrToInt(LeftStr(v,xc-1));
        m1 := StrToInt(RightStr(v,Length(v)-xc));

        // -- We can see if this job is ready to run
        if ((h1 = hh) and (m1 = mm) and (DayOf(lr) <> Today)) then
        begin

          DocumentRegistry.SaveSettingMemoDateTime('/schedule','last_run',Now);

          // -- Mark this entry as ready to run
          Result := True;
        end;

      end;

    end
    else if (AnsiCompareText(fr,'Hourly') = 0) then
    begin
      Result := False;

      // -- Decode the time now
      DecodeTime(Now,hh,mm,ss,ms);

      // -- Decode the time of the last run
      DecodeTime(lr,h1,m1,ss,ms);

      // -- If it has run today then exit
      if (HourOf(lr) = HourOf(now)) and (DayOf(lr) = DayOf(Now)) then
        Exit;

      // -- Hasn't been run this hour
      DocumentRegistry.GetSettingMemoString('/schedule','time',v);

      xc := Pos(':',v);
      if (xc <> 0) then
        m1 := StrToInt(RightStr(v,Length(v)-xc))
      else
        m1 := StrToInt(v);

      // -- We can see if this job is ready to run
      if (mm = m1) then
      begin

        DocumentRegistry.SaveSettingMemoDateTime('/schedule','last_run',Now);

        // -- Mark this entry as ready to run
        Result := True;
      end;

    end
    else if (AnsiCompareText(fr,'Weekly') = 0) then
    begin
      // -- Not implemented
    end
    else if (AnsiCompareText(fr,'Monthly') = 0) then
    begin
      // -- Not implemented
    end
    else
      // --
      Result := False;

end;

function DiskInDrive(Drive: Char): Boolean;
var
  ErrorMode: Word;
begin
  { make it upper case }
  if Drive in ['a'..'z'] then Dec(Drive, $20);
  { make sure it's a letter }
  if not (Drive in ['A'..'Z']) then
    raise EConvertError.Create('Not a valid drive ID');
  { turn off critical errors }
  ErrorMode := SetErrorMode(SEM_FailCriticalErrors);
  try
    { drive 1 = a, 2 = b, 3 = c, etc. }
    if DiskSize(Ord(Drive) - $40) = -1 then
      Result := False
    else
      Result := True;
  finally
    { Restore old error mode }
    SetErrorMode(ErrorMode);
  end;
end;

function TGTDTaskPanel.GetJobCount:Integer;
begin
  Result := lstCheckList.Items.Count;
end;

end.

