.class public Lcom/mediatek/vt/VTManager;
.super Ljava/lang/Object;
.source "VTManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/vt/VTManager$TelMsgHandler;,
        Lcom/mediatek/vt/VTManager$VTHanlder;,
        Lcom/mediatek/vt/VTManager$State;
    }
.end annotation


# static fields
.field public static final QUIT_THREAD:I = 0x8000000

.field public static final RECORD_TYPE_AUDIO_ONLY:I = 0x2

.field public static final RECORD_TYPE_VIDEO_AUDIO:I = 0x1

.field public static final RECORD_TYPE_VIDEO_ONLY:I = 0x3

.field public static final SET_VT_CLOSE:I = 0x0

.field public static final SET_VT_CONNECTED:I = 0x3

.field public static final SET_VT_OPEN:I = 0x1

.field public static final SET_VT_READY:I = 0x2

.field static final TAG:Ljava/lang/String; = "VTManager"

.field private static final VIDEO_TYPE_CAMERA:I = 0x0

.field private static final VIDEO_TYPE_IMAGE:I = 0x1

.field private static final VIDEO_TYPE_LAST_SHOT:I = 0x2

.field public static final VT_ERROR_CALL_DISCONNECT:I = 0x8001

.field public static final VT_ERROR_CAMERA:I = 0x8003

.field public static final VT_ERROR_MEDIA_RECORDER_COMPLETE:I = 0x8007

.field public static final VT_ERROR_MEDIA_RECORDER_EVENT_ERROR:I = 0x8006

.field public static final VT_ERROR_MEDIA_RECORDER_EVENT_INFO:I = 0x8005

.field public static final VT_ERROR_MEDIA_SERVER_DIED:I = 0x8004

.field public static final VT_ERROR_START_VTS_FAIL:I = 0x8002

.field public static final VT_MSG_CAM_BEGIN:I = 0x1000

.field public static final VT_MSG_CLOSE:I = 0x1

.field public static final VT_MSG_CONNECTED:I = 0x4

.field public static final VT_MSG_DISCONNECTED:I = 0x5

.field public static final VT_MSG_EM_INDICATION:I = 0x6

.field public static final VT_MSG_OPEN:I = 0x2

.field public static final VT_MSG_PEER_CAMERA_CLOSE:I = 0x10

.field public static final VT_MSG_PEER_CAMERA_OPEN:I = 0x9

.field public static final VT_MSG_READY:I = 0x3

.field public static final VT_MSG_RECEIVE_FIRSTFRAME:I = 0x8

.field public static final VT_MSG_START_COUNTER:I = 0x7

.field public static final VT_NORMAL_END_SESSION_COMMAND:I = 0x8101

.field public static final VT_RET_FROM_JNI_FALSE:I = 0x1

.field public static final VT_RET_FROM_JNI_TRUE:I = 0x0

.field public static final VT_VQ_NORMAL:I = 0x1

.field public static final VT_VQ_SHARP:I = 0x0

.field public static final VT_VQ_SMOOTH:I = 0x2

.field private static sVTManager:Lcom/mediatek/vt/VTManager;


# instance fields
.field private mClosingVTService:Z

.field mContext:Landroid/content/Context;

.field private mDateTakenRecording:J

.field private mEnableReplacePeerVideo:I

.field private mEndCallLock:Ljava/lang/Integer;

.field private mInvokeHideMeBeforeOpen:Z

.field private mInvokeLockPeerVideoBeforeOpen:Z

.field private mRecordedFileName:Ljava/lang/String;

.field private mRecordedFilePath:Ljava/lang/String;

.field private mReplacePeerVideoPicturePath:Ljava/lang/String;

.field mSettings:Lcom/mediatek/vt/VTSettings;

.field private mSimId:I

.field private mStartVTSMALFail:Z

.field mState:Lcom/mediatek/vt/VTManager$State;

.field mTelMsgHandler:Landroid/os/Handler;

.field mTelMsgThread:Ljava/lang/Thread;

.field mVTListener:Landroid/os/Handler;

.field private mVTListenerLock:Ljava/lang/Integer;

.field mVTThread:Ljava/lang/Thread;

.field mVtHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    new-instance v0, Lcom/mediatek/vt/VTManager;

    invoke-direct {v0}, Lcom/mediatek/vt/VTManager;-><init>()V

    sput-object v0, Lcom/mediatek/vt/VTManager;->sVTManager:Lcom/mediatek/vt/VTManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iput-object v0, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    .line 122
    iput-object v2, p0, Lcom/mediatek/vt/VTManager;->mVTListener:Landroid/os/Handler;

    .line 125
    iput-object v2, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    .line 127
    iput-object v2, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    .line 129
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/vt/VTManager;->mVTListenerLock:Ljava/lang/Integer;

    .line 130
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/vt/VTManager;->mEndCallLock:Ljava/lang/Integer;

    .line 132
    iput-boolean v1, p0, Lcom/mediatek/vt/VTManager;->mInvokeHideMeBeforeOpen:Z

    .line 133
    iput-boolean v1, p0, Lcom/mediatek/vt/VTManager;->mInvokeLockPeerVideoBeforeOpen:Z

    .line 134
    iput-boolean v1, p0, Lcom/mediatek/vt/VTManager;->mClosingVTService:Z

    .line 135
    iput-boolean v1, p0, Lcom/mediatek/vt/VTManager;->mStartVTSMALFail:Z

    .line 142
    iput-object v2, p0, Lcom/mediatek/vt/VTManager;->mRecordedFilePath:Ljava/lang/String;

    .line 143
    iput-object v2, p0, Lcom/mediatek/vt/VTManager;->mRecordedFileName:Ljava/lang/String;

    .line 144
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/vt/VTManager;->mDateTakenRecording:J

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/vt/VTManager;->mSimId:I

    .line 265
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iput-object v0, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    .line 266
    new-instance v0, Lcom/mediatek/vt/VTSettings;

    invoke-direct {v0}, Lcom/mediatek/vt/VTSettings;-><init>()V

    iput-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    .line 267
    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/vt/VTManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/vt/VTManager;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/mediatek/vt/VTManager;->setVTCloseImpl()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/vt/VTManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/vt/VTManager;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/mediatek/vt/VTManager;->setVTOpenImpl()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/vt/VTManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/vt/VTManager;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/mediatek/vt/VTManager;->setVTReadyImpl()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/vt/VTManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/vt/VTManager;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/mediatek/vt/VTManager;->mStartVTSMALFail:Z

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/vt/VTManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/vt/VTManager;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/mediatek/vt/VTManager;->setVTConnectedImpl()V

    return-void
.end method

.method public static getInstance()Lcom/mediatek/vt/VTManager;
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/mediatek/vt/VTManager;->sVTManager:Lcom/mediatek/vt/VTManager;

    return-object v0
.end method

.method private printLogsToMMI(I)V
    .locals 3
    .param p1, "what"    # I

    .prologue
    .line 887
    sparse-switch p1, :sswitch_data_0

    .line 942
    :goto_0
    return-void

    .line 889
    :sswitch_0
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postEventToMMI ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]--VT_MSG_OPEN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 892
    :sswitch_1
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postEventToMMI ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]--VT_MSG_READY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 895
    :sswitch_2
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postEventToMMI ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]--VT_MSG_CONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 898
    :sswitch_3
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postEventToMMI ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]--VT_MSG_DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 901
    :sswitch_4
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postEventToMMI ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]--VT_MSG_EM_INDICATION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 904
    :sswitch_5
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postEventToMMI ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]--VT_MSG_START_COUNTER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 907
    :sswitch_6
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postEventToMMI ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]--VT_MSG_RECEIVE_FIRSTFRAME"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 910
    :sswitch_7
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postEventToMMI ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]--VT_MSG_PEER_CAMERA_OPEN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 913
    :sswitch_8
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postEventToMMI ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]--VT_MSG_PEER_CAMERA_CLOSE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 916
    :sswitch_9
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postEventToMMI ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]--VT_ERROR_CALL_DISCONNECT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 919
    :sswitch_a
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postEventToMMI ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]--VT_ERROR_START_VTS_FAIL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 922
    :sswitch_b
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postEventToMMI ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]--VT_ERROR_CAMERA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 925
    :sswitch_c
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postEventToMMI ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]--VT_ERROR_MEDIA_SERVER_DIED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 928
    :sswitch_d
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postEventToMMI ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]--VT_ERROR_MEDIA_RECORDER_EVENT_INFO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 931
    :sswitch_e
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postEventToMMI ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]--VT_ERROR_MEDIA_RECORDER_EVENT_ERROR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 934
    :sswitch_f
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postEventToMMI ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]--VT_ERROR_MEDIA_RECORDER_EVENT_COMPLETE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 937
    :sswitch_10
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postEventToMMI ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]--VT_NORMAL_END_SESSION_COMMAND"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 887
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0x9 -> :sswitch_7
        0xa -> :sswitch_8
        0x8001 -> :sswitch_9
        0x8002 -> :sswitch_a
        0x8003 -> :sswitch_b
        0x8004 -> :sswitch_c
        0x8005 -> :sswitch_d
        0x8006 -> :sswitch_e
        0x8007 -> :sswitch_f
        0x8101 -> :sswitch_10
    .end sparse-switch
.end method

.method public static setEM(III)V
    .locals 0
    .param p0, "item"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I

    .prologue
    .line 828
    invoke-static {p0, p1, p2}, Lcom/mediatek/vt/VTelProvider;->setEM(III)V

    .line 829
    return-void
.end method

.method private setInvokeHideMeBeforeOpen(Z)V
    .locals 0
    .param p1, "invokeHideMeBeforeOpen"    # Z

    .prologue
    .line 1109
    iput-boolean p1, p0, Lcom/mediatek/vt/VTManager;->mInvokeHideMeBeforeOpen:Z

    .line 1110
    return-void
.end method

.method private setInvokeLockPeerVideoBeforeOpen(Z)V
    .locals 0
    .param p1, "invokeLockPeerVideoBeforeOpen"    # Z

    .prologue
    .line 1122
    iput-boolean p1, p0, Lcom/mediatek/vt/VTManager;->mInvokeLockPeerVideoBeforeOpen:Z

    .line 1123
    return-void
.end method

.method private declared-synchronized setVTCloseImpl()V
    .locals 6

    .prologue
    .line 428
    monitor-enter p0

    :try_start_0
    const-string v2, "VTManager"

    const-string v3, "=>setVTCloseImpl"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :goto_0
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    sget-object v3, Lcom/mediatek/vt/VTManager$State;->CONNECTED:Lcom/mediatek/vt/VTManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_0

    .line 431
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "VTManager"

    const-string v3, "createThreads, wait error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 442
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/mediatek/vt/VTManager;->postEventToMMI(IIILjava/lang/Object;)V

    .line 445
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/vt/VTManager;->mClosingVTService:Z

    .line 447
    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mEndCallLock:Ljava/lang/Integer;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 448
    :try_start_3
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->closeVTService()I

    move-result v1

    .line 449
    .local v1, "ret":I
    if-eqz v1, :cond_1

    .line 450
    const-string v2, "VTManager"

    const-string v4, "setVTCloseImpl, error"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 459
    :goto_1
    monitor-exit p0

    return-void

    .line 453
    :cond_1
    :try_start_4
    sget-object v2, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iput-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    .line 454
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/vt/VTManager;->mStartVTSMALFail:Z

    .line 455
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/vt/VTManager;->mSimId:I

    .line 456
    const-string v2, "VTManager"

    iget-object v4, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    invoke-virtual {v4}, Lcom/mediatek/vt/VTManager$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 458
    :try_start_5
    const-string v2, "VTManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<=setVTCloseImpl, mState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    invoke-virtual {v4}, Lcom/mediatek/vt/VTManager$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 428
    .end local v1    # "ret":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 457
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method private declared-synchronized setVTConnectedImpl()V
    .locals 5

    .prologue
    .line 387
    monitor-enter p0

    :try_start_0
    const-string v1, "VTManager"

    const-string v2, "=>setVTConnectedImpl"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CONNECTED:Lcom/mediatek/vt/VTManager$State;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    .line 412
    :goto_0
    monitor-exit p0

    return-void

    .line 392
    :cond_0
    :try_start_1
    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v1, v2, :cond_1

    .line 393
    const-string v1, "VTManager"

    const-string v2, "setVTConnectedImpl, error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 387
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 403
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->startVTService()I

    move-result v0

    .line 404
    .local v0, "ret":I
    if-eqz v0, :cond_2

    .line 405
    const-string v1, "VTManager"

    const-string v2, "setVTConnectedImpl, error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 408
    :cond_2
    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CONNECTED:Lcom/mediatek/vt/VTManager$State;

    iput-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    .line 409
    const-string v1, "VTManager"

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mediatek/vt/VTManager;->postEventToMMI(IIILjava/lang/Object;)V

    .line 411
    const-string v1, "VTManager"

    const-string v2, "<=setVTConnectedImpl"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized setVTOpenImpl()V
    .locals 5

    .prologue
    .line 304
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/mediatek/vt/VTManager;->mSimId:I

    invoke-static {v1}, Lcom/mediatek/vt/VTelProvider;->openVTService(I)I

    move-result v0

    .line 305
    .local v0, "ret":I
    if-eqz v0, :cond_0

    .line 306
    const-string v1, "VTManager"

    const-string v2, "setVTOpenImpl, error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    :goto_0
    monitor-exit p0

    return-void

    .line 309
    :cond_0
    :try_start_1
    sget-object v1, Lcom/mediatek/vt/VTManager$State;->OPEN:Lcom/mediatek/vt/VTManager$State;

    iput-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    .line 311
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 312
    const-string v1, "VTManager"

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-boolean v1, p0, Lcom/mediatek/vt/VTManager;->mInvokeHideMeBeforeOpen:Z

    if-eqz v1, :cond_1

    .line 314
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->getVideoType()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v2}, Lcom/mediatek/vt/VTSettings;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/vt/VTManager;->setLocalView(ILjava/lang/String;)V

    .line 316
    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mediatek/vt/VTManager;->postEventToMMI(IIILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 304
    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized setVTReadyImpl()V
    .locals 6

    .prologue
    .line 339
    monitor-enter p0

    :try_start_0
    const-string v2, "VTManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVTReadyImpl, mTelMsgHandler = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v1, 0x0

    .line 341
    .local v1, "ret":I
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v2}, Lcom/mediatek/vt/VTSettings;->getIsSwitch()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 342
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v2}, Lcom/mediatek/vt/VTSettings;->getPeerSurface()Landroid/view/Surface;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v3}, Lcom/mediatek/vt/VTSettings;->getLocalSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/vt/VTelProvider;->initVTService(Landroid/view/Surface;Landroid/view/Surface;)I

    move-result v1

    .line 347
    :goto_0
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 348
    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mTelMsgThread:Ljava/lang/Thread;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 350
    :try_start_1
    const-string v2, "VTManager"

    const-string v4, "setVTReadyImpl mTelMsgThread wait "

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mTelMsgThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 359
    :cond_0
    if-eqz v1, :cond_2

    .line 360
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lcom/mediatek/vt/VTManager;->mStartVTSMALFail:Z

    .line 361
    const-string v2, "VTManager"

    const-string v3, "setVTReadyImpl, error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 364
    :try_start_4
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 365
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 375
    :goto_2
    monitor-exit p0

    return-void

    .line 344
    :cond_1
    :try_start_5
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v2}, Lcom/mediatek/vt/VTSettings;->getLocalSurface()Landroid/view/Surface;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v3}, Lcom/mediatek/vt/VTSettings;->getPeerSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/vt/VTelProvider;->initVTService(Landroid/view/Surface;Landroid/view/Surface;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v1

    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_6
    const-string v2, "VTManager"

    const-string v4, "setVTReadyImpl, wait error"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 356
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 339
    .end local v1    # "ret":I
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 365
    .restart local v1    # "ret":I
    :catchall_2
    move-exception v2

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v2

    .line 368
    :cond_2
    sget-object v2, Lcom/mediatek/vt/VTManager$State;->READY:Lcom/mediatek/vt/VTManager$State;

    iput-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    .line 369
    const-string v2, "VTManager"

    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v2}, Lcom/mediatek/vt/VTSettings;->getCameraSettings()V

    .line 371
    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/mediatek/vt/VTManager;->postEventToMMI(IIILjava/lang/Object;)V

    .line 372
    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    monitor-enter v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 373
    :try_start_a
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 374
    monitor-exit v3

    goto :goto_2

    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
.end method


# virtual methods
.method public canDecBrightness()Z
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->canDecBrightness()Z

    move-result v0

    return v0
.end method

.method public canDecContrast()Z
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->canDecContrast()Z

    move-result v0

    return v0
.end method

.method public canDecZoom()Z
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->canDecZoom()Z

    move-result v0

    return v0
.end method

.method public canIncBrightness()Z
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->canIncBrightness()Z

    move-result v0

    return v0
.end method

.method public canIncContrast()Z
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->canIncContrast()Z

    move-result v0

    return v0
.end method

.method public canIncZoom()Z
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->canIncZoom()Z

    move-result v0

    return v0
.end method

.method createThreads()V
    .locals 4

    .prologue
    .line 175
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 176
    :cond_0
    const-string v1, "VTManager"

    const-string v2, "init error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_0
    return-void

    .line 180
    :cond_1
    new-instance v1, Lcom/mediatek/vt/VTManager$1;

    invoke-direct {v1, p0}, Lcom/mediatek/vt/VTManager$1;-><init>(Lcom/mediatek/vt/VTManager;)V

    iput-object v1, p0, Lcom/mediatek/vt/VTManager;->mVTThread:Ljava/lang/Thread;

    .line 194
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVTThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 196
    new-instance v1, Lcom/mediatek/vt/VTManager$2;

    invoke-direct {v1, p0}, Lcom/mediatek/vt/VTManager$2;-><init>(Lcom/mediatek/vt/VTManager;)V

    iput-object v1, p0, Lcom/mediatek/vt/VTManager;->mTelMsgThread:Ljava/lang/Thread;

    .line 210
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mVTThread:Ljava/lang/Thread;

    monitor-enter v2

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 213
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVTThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    const-string v1, "VTManager"

    const-string v2, "mVtHandler.sendEmptyMessage()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 223
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mTelMsgThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "VTManager"

    const-string v3, "createThreads, wait error"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 219
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public decBrightness()Z
    .locals 2

    .prologue
    .line 713
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->decBrightness()Z

    move-result v0

    .line 714
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 715
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->setParameters()V

    .line 717
    :cond_0
    return v0
.end method

.method public decContrast()Z
    .locals 2

    .prologue
    .line 761
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->decContrast()Z

    move-result v0

    .line 762
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 763
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->setParameters()V

    .line 765
    :cond_0
    return v0
.end method

.method public decZoom()Z
    .locals 2

    .prologue
    .line 737
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->decZoom()Z

    move-result v0

    .line 738
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 739
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->setParameters()V

    .line 741
    :cond_0
    return v0
.end method

.method public deinit()V
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->joinThreads()V

    .line 277
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->deinit()V

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/vt/VTManager;->mContext:Landroid/content/Context;

    .line 279
    return-void
.end method

.method public enlargeDisplaySurface(Z)V
    .locals 0
    .param p1, "isEnlarge"    # Z

    .prologue
    .line 587
    return-void
.end method

.method public getCameraSensorCount()I
    .locals 5

    .prologue
    .line 817
    const/4 v0, 0x0

    .line 818
    .local v0, "ret":I
    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mEndCallLock:Ljava/lang/Integer;

    monitor-enter v3

    .line 819
    :try_start_0
    sget-object v2, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v4, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v2, v4, :cond_0

    .line 820
    monitor-exit v3

    move v1, v0

    .line 824
    .end local v0    # "ret":I
    .local v1, "ret":I
    :goto_0
    return v1

    .line 822
    .end local v1    # "ret":I
    .restart local v0    # "ret":I
    :cond_0
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->getCameraSensorCount()I

    move-result v0

    .line 823
    monitor-exit v3

    move v1, v0

    .line 824
    .end local v0    # "ret":I
    .restart local v1    # "ret":I
    goto :goto_0

    .line 823
    .end local v1    # "ret":I
    .restart local v0    # "ret":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getColorEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getColorEffect()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNightMode()Z
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getNightMode()Z

    move-result v0

    return v0
.end method

.method getParameters()V
    .locals 2

    .prologue
    .line 689
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->getParameters()Lcom/mediatek/vt/CameraParamters;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    .line 694
    return-void
.end method

.method public getSimId()I
    .locals 1

    .prologue
    .line 1130
    iget v0, p0, Lcom/mediatek/vt/VTManager;->mSimId:I

    return v0
.end method

.method public getState()Lcom/mediatek/vt/VTManager$State;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    return-object v0
.end method

.method public getSupportedColorEffects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 786
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVideoQuality()I
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getVideoQuality()I

    move-result v0

    return v0
.end method

.method public getmVTListener()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mVTListener:Landroid/os/Handler;

    return-object v0
.end method

.method public incBrightness()Z
    .locals 2

    .prologue
    .line 721
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->incBrightness()Z

    move-result v0

    .line 722
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 723
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->setParameters()V

    .line 725
    :cond_0
    return v0
.end method

.method public incContrast()Z
    .locals 2

    .prologue
    .line 769
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->incContrast()Z

    move-result v0

    .line 770
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 771
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->setParameters()V

    .line 773
    :cond_0
    return v0
.end method

.method public incZoom()Z
    .locals 2

    .prologue
    .line 745
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->incZoom()Z

    move-result v0

    .line 746
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 747
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->setParameters()V

    .line 749
    :cond_0
    return v0
.end method

.method public incomingVTCall(I)V
    .locals 3
    .param p1, "flag"    # I

    .prologue
    .line 1117
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incomingVTCall in VTManager.java, flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    invoke-static {p1}, Lcom/mediatek/vt/VTelProvider;->incomingVTCall(I)I

    .line 1119
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/mediatek/vt/VTManager;->mContext:Landroid/content/Context;

    .line 271
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/VTSettings;->init(Landroid/content/Context;)V

    .line 272
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->createThreads()V

    .line 273
    return-void
.end method

.method public isInvokeHideMeBeforeOpen()Z
    .locals 1

    .prologue
    .line 1105
    iget-boolean v0, p0, Lcom/mediatek/vt/VTManager;->mInvokeHideMeBeforeOpen:Z

    return v0
.end method

.method public isInvokeLockPeerVideoBeforeOpenn()Z
    .locals 1

    .prologue
    .line 1113
    iget-boolean v0, p0, Lcom/mediatek/vt/VTManager;->mInvokeLockPeerVideoBeforeOpen:Z

    return v0
.end method

.method public isSupportNightMode()Z
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->isSupportNightMode()Z

    move-result v0

    return v0
.end method

.method joinThreads()V
    .locals 5

    .prologue
    const/high16 v3, 0x8000000

    const/4 v4, 0x0

    .line 227
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 229
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 230
    const-string v1, "VTManager"

    const-string v2, "null == mTelMsgHandler in joinThreads()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :goto_0
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 241
    :try_start_0
    const-string v1, "VTManager"

    const-string v3, "mTelMsgHandler notify in joinThreads()"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVTThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 251
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mTelMsgThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 256
    :goto_2
    iput-object v4, p0, Lcom/mediatek/vt/VTManager;->mVTThread:Ljava/lang/Thread;

    .line 257
    iput-object v4, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    .line 259
    iput-object v4, p0, Lcom/mediatek/vt/VTManager;->mTelMsgThread:Ljava/lang/Thread;

    .line 260
    iput-object v4, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    .line 262
    return-void

    .line 232
    :cond_0
    const-string v1, "VTManager"

    const-string v2, "null != mTelMsgHandler in joinThreads()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/IllegalMonitorStateException;
    :try_start_3
    const-string v1, "VTManager"

    const-string v3, "mTelMsgHandler notify in joinThreads(), wait error"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {v0}, Ljava/lang/IllegalMonitorStateException;->printStackTrace()V

    goto :goto_1

    .line 247
    .end local v0    # "e":Ljava/lang/IllegalMonitorStateException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 252
    :catch_1
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "VTManager"

    const-string v2, "joinThreads error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method public lockPeerVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 963
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v1, :cond_0

    .line 964
    const-string v0, "VTManager"

    const-string v1, "lockPeerVideo, vtmanager state error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    invoke-direct {p0, v2}, Lcom/mediatek/vt/VTManager;->setInvokeLockPeerVideoBeforeOpen(Z)V

    .line 966
    invoke-static {v2}, Lcom/mediatek/vt/VTelProvider;->setInvokeLockPeerVideoBeforeOpen(I)I

    .line 970
    :goto_0
    return-void

    .line 969
    :cond_0
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->lockPeerVideo()I

    goto :goto_0
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    .line 462
    const-string v0, "VTManager"

    const-string v1, "pre-onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v1, :cond_0

    .line 464
    const-string v0, "VTManager"

    const-string v1, "onDisconnected, VT Manager alreay closed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :goto_0
    return-void

    .line 467
    :cond_0
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->setEndCallFlag()V

    .line 468
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->onDisconnectedActual()V

    goto :goto_0
.end method

.method public declared-synchronized onDisconnectedActual()V
    .locals 5

    .prologue
    .line 472
    monitor-enter p0

    :try_start_0
    const-string v1, "VTManager"

    const-string v2, "onDisconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CONNECTED:Lcom/mediatek/vt/VTManager$State;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-eq v1, v2, :cond_0

    .line 474
    const-string v1, "VTManager"

    const-string v2, "onDisconnected, VT Manager state error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    :goto_0
    monitor-exit p0

    return-void

    .line 477
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->stopVTService()I

    move-result v0

    .line 478
    .local v0, "ret":I
    if-eqz v0, :cond_1

    .line 479
    const-string v1, "VTManager"

    const-string v2, "onDisconnected, error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 472
    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 482
    .restart local v0    # "ret":I
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 483
    sget-object v1, Lcom/mediatek/vt/VTManager$State;->READY:Lcom/mediatek/vt/VTManager$State;

    iput-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    .line 484
    const-string v1, "VTManager"

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mediatek/vt/VTManager;->postEventToMMI(IIILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onUserInput(Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 950
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v1, :cond_0

    .line 951
    const-string v0, "VTManager"

    const-string v1, "onUserInput, vtmanager state error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :goto_0
    return-void

    .line 954
    :cond_0
    invoke-static {p1}, Lcom/mediatek/vt/VTelProvider;->onUserInput(Ljava/lang/String;)V

    goto :goto_0
.end method

.method postEventFromNative(IIILjava/lang/Object;)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 882
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postEventFromNative ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/vt/VTManager;->postEventToMMI(IIILjava/lang/Object;)V

    .line 884
    return-void
.end method

.method postEventToMMI(IIILjava/lang/Object;)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 867
    iget-boolean v0, p0, Lcom/mediatek/vt/VTManager;->mClosingVTService:Z

    if-eqz v0, :cond_0

    const v0, 0x8001

    if-ne v0, p1, :cond_0

    .line 879
    :goto_0
    return-void

    .line 870
    :cond_0
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVTListenerLock:Ljava/lang/Integer;

    monitor-enter v1

    .line 871
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/vt/VTManager;->printLogsToMMI(I)V

    .line 873
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mVTListener:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 874
    const-string v0, "VTManager"

    const-string v2, "postEventToMMI failed, Handler has not been registered yet"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 876
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mVTListener:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mVTListener:Landroid/os/Handler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public registerVTListener(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 489
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVTListenerLock:Ljava/lang/Integer;

    monitor-enter v1

    .line 490
    :try_start_0
    iput-object p1, p0, Lcom/mediatek/vt/VTManager;->mVTListener:Landroid/os/Handler;

    .line 491
    monitor-exit v1

    .line 492
    return-void

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public savePeerPhoto()Z
    .locals 15

    .prologue
    .line 641
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 644
    .local v2, "dateTaken":J
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "yyyy-MM-dd kk.mm.ss.SSS"

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    .line 645
    .local v8, "name":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".png"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 646
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 648
    .local v0, "cameraImageBucketName":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/DCIM/Camera/IMG_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 650
    .local v9, "path":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/DCIM/Camera/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 652
    .local v6, "imageDirectory":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 654
    const/4 v13, 0x0

    invoke-static {v13, v9}, Lcom/mediatek/vt/VTelProvider;->snapshot(ILjava/lang/String;)I

    move-result v5

    .line 655
    .local v5, "flag":I
    if-eqz v5, :cond_0

    .line 656
    const-string v13, "VTManager"

    const-string v14, "***snapshot() fail in Manager layer***"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const/4 v13, 0x0

    .line 685
    :goto_0
    return v13

    .line 661
    :cond_0
    iget-object v13, p0, Lcom/mediatek/vt/VTManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 662
    .local v1, "cr":Landroid/content/ContentResolver;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 663
    .local v12, "values":Landroid/content/ContentValues;
    const-string v13, "title"

    invoke-virtual {v12, v13, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string v13, "_display_name"

    invoke-virtual {v12, v13, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v13, "datetaken"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 666
    const-string v13, "mime_type"

    const-string v14, "image/png"

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-string v13, "orientation"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 669
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 670
    .local v7, "imageFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_1

    .line 671
    const-string v13, "VTManager"

    const-string v14, "***image_File does not exist in Manager layer***"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const/4 v13, 0x0

    goto :goto_0

    .line 674
    :cond_1
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 675
    .local v10, "size":J
    const-string v13, "_size"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 676
    const-string v13, "_data"

    invoke-virtual {v12, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const-string v13, "VTManager"

    invoke-virtual {v12}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :try_start_0
    sget-object v13, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v13, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    const/4 v13, 0x1

    goto :goto_0

    .line 681
    :catch_0
    move-exception v4

    .line 682
    .local v4, "e":Ljava/lang/Exception;
    const-string v13, "VTManager"

    const-string v14, "insert fail in savePeerPhoto()"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public setColorEffect(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 781
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/VTSettings;->setColorEffect(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->setParameters()V

    .line 783
    return-void
.end method

.method public setDisplay(Landroid/view/Surface;Landroid/view/Surface;)V
    .locals 3
    .param p1, "local"    # Landroid/view/Surface;
    .param p2, "peer"    # Landroid/view/Surface;

    .prologue
    .line 566
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/VTSettings;->setLocalSurface(Landroid/view/Surface;)V

    .line 568
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p2}, Lcom/mediatek/vt/VTSettings;->setPeerSurface(Landroid/view/Surface;)V

    .line 569
    return-void
.end method

.method public setLocalView(ILjava/lang/String;)V
    .locals 4
    .param p1, "videoType"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 612
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocalVideoType, closingVTService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/vt/VTManager;->mClosingVTService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " videoType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    if-nez p2, :cond_0

    .line 614
    const-string v0, "VTManager"

    const-string v1, "setLocalView, path is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/vt/VTManager;->mClosingVTService:Z

    if-eqz v0, :cond_2

    .line 617
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mEndCallLock:Ljava/lang/Integer;

    monitor-enter v1

    .line 618
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/VTSettings;->setVideoType(I)V

    .line 619
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p2}, Lcom/mediatek/vt/VTSettings;->setImagePath(Ljava/lang/String;)V

    .line 620
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v2, :cond_1

    .line 621
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/vt/VTManager;->setInvokeHideMeBeforeOpen(Z)V

    .line 622
    monitor-exit v1

    .line 635
    :goto_0
    return-void

    .line 624
    :cond_1
    invoke-static {p1, p2}, Lcom/mediatek/vt/VTelProvider;->setLocalView(ILjava/lang/String;)V

    .line 625
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 627
    :cond_2
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/VTSettings;->setVideoType(I)V

    .line 628
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p2}, Lcom/mediatek/vt/VTSettings;->setImagePath(Ljava/lang/String;)V

    .line 629
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v1, :cond_3

    .line 630
    invoke-direct {p0, v3}, Lcom/mediatek/vt/VTManager;->setInvokeHideMeBeforeOpen(Z)V

    goto :goto_0

    .line 633
    :cond_3
    invoke-static {p1, p2}, Lcom/mediatek/vt/VTelProvider;->setLocalView(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setNightMode(Z)V
    .locals 1
    .param p1, "isOn"    # Z

    .prologue
    .line 798
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/VTSettings;->setNightMode(Z)V

    .line 799
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->setParameters()V

    .line 800
    return-void
.end method

.method setParameters()V
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    iget-object v0, v0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-static {v0}, Lcom/mediatek/vt/VTelProvider;->setParameters(Lcom/mediatek/vt/CameraParamters;)V

    .line 699
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    iget-object v0, v0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-static {v0}, Lcom/mediatek/vt/VTelProvider;->updateParameters(Lcom/mediatek/vt/CameraParamters;)Lcom/mediatek/vt/CameraParamters;

    .line 702
    return-void
.end method

.method public setPeerView(ILjava/lang/String;)V
    .locals 2
    .param p1, "bEnableReplacePeerVideo"    # I
    .param p2, "sReplacePeerVideoPicturePath"    # Ljava/lang/String;

    .prologue
    .line 167
    const-string v0, "VTManager"

    const-string v1, "setPeerView"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iput p1, p0, Lcom/mediatek/vt/VTManager;->mEnableReplacePeerVideo:I

    .line 169
    iput-object p2, p0, Lcom/mediatek/vt/VTManager;->mReplacePeerVideoPicturePath:Ljava/lang/String;

    .line 170
    invoke-static {p1, p2}, Lcom/mediatek/vt/VTelProvider;->setPeerView(ILjava/lang/String;)I

    .line 172
    return-void
.end method

.method public setVTClose()V
    .locals 2

    .prologue
    .line 418
    const-string v0, "VTManager"

    const-string v1, "setVTClose"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v1, :cond_0

    .line 420
    const-string v0, "VTManager"

    const-string v1, "setVTCloseImpl, error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 424
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->deinit()V

    goto :goto_0
.end method

.method public declared-synchronized setVTConnected()V
    .locals 2

    .prologue
    .line 378
    monitor-enter p0

    :try_start_0
    const-string v0, "VTManager"

    const-string v1, "setVTConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 380
    const-string v0, "VTManager"

    const-string v1, "setVTConnected: mVtHandler is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    :goto_0
    monitor-exit p0

    return-void

    .line 382
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVTOpen(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simId"    # I

    .prologue
    .line 286
    const-string v0, "VTManager"

    const-string v1, "setVTOpen"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v1, :cond_0

    .line 288
    const-string v0, "VTManager"

    const-string v1, "setVTOpen, mState != State.CLOSE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :goto_0
    return-void

    .line 296
    :cond_0
    iput p2, p0, Lcom/mediatek/vt/VTManager;->mSimId:I

    .line 297
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/vt/VTManager;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {p0, p1}, Lcom/mediatek/vt/VTManager;->init(Landroid/content/Context;)V

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/vt/VTManager;->mClosingVTService:Z

    goto :goto_0
.end method

.method public declared-synchronized setVTReady()V
    .locals 3

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVTReady, mVtHandler = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->OPEN:Lcom/mediatek/vt/VTManager$State;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v1, :cond_1

    .line 330
    const-string v0, "VTManager"

    const-string v1, "setVTReadyImpl, error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 333
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVTVisible(Z)V
    .locals 4
    .param p1, "isVisible"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 836
    const-string v0, "VTManager"

    const-string v2, " => setVTVisible()"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v2, :cond_0

    .line 864
    :goto_0
    return-void

    .line 840
    :cond_0
    if-nez p1, :cond_1

    .line 841
    const-string v0, "VTManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " => setVTVisible() - isVisible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " localS=null, peerS= null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const/4 v2, 0x0

    move-object v0, v1

    check-cast v0, Landroid/view/Surface;

    check-cast v1, Landroid/view/Surface;

    invoke-static {v2, v0, v1}, Lcom/mediatek/vt/VTelProvider;->setVTVisible(ILandroid/view/Surface;Landroid/view/Surface;)I

    .line 863
    :goto_1
    const-string v0, "VTManager"

    const-string v1, " <= setVTVisible()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 844
    :cond_1
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    if-nez v0, :cond_2

    .line 845
    const-string v0, "VTManager"

    const-string v1, "error setVTVisible, null == mSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 848
    :cond_2
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getPeerSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_3

    .line 849
    const-string v0, "VTManager"

    const-string v1, "error setVTVisible, null == getPeerSurface"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 852
    :cond_3
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getPeerSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_4

    .line 853
    const-string v0, "VTManager"

    const-string v1, "error setVTVisible, null == getSurface"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 857
    :cond_4
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getIsSwitch()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 858
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getPeerSurface()Landroid/view/Surface;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->getLocalSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/mediatek/vt/VTelProvider;->setVTVisible(ILandroid/view/Surface;Landroid/view/Surface;)I

    goto :goto_1

    .line 860
    :cond_5
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getLocalSurface()Landroid/view/Surface;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->getPeerSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/mediatek/vt/VTelProvider;->setVTVisible(ILandroid/view/Surface;Landroid/view/Surface;)I

    goto :goto_1
.end method

.method public setVideoQuality(I)V
    .locals 1
    .param p1, "quality"    # I

    .prologue
    .line 808
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/VTSettings;->setVideoQuality(I)V

    .line 809
    invoke-static {p1}, Lcom/mediatek/vt/VTelProvider;->setPeerVideo(I)V

    .line 810
    return-void
.end method

.method public startRecording(IJ)I
    .locals 11
    .param p1, "type"    # I
    .param p2, "maxSize"    # J

    .prologue
    const/4 v10, 0x1

    .line 990
    const-string v7, "VTManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startRecording() in VTManager.java, type is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "maxSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    const/4 v2, 0x0

    .line 994
    .local v2, "ret":I
    sget-object v7, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v8, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v7, v8, :cond_0

    .line 995
    const-string v7, "VTManager"

    const-string v8, "startRecording() in VTManager.java, State=CLOSE"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1049
    .end local v2    # "ret":I
    .local v3, "ret":I
    :goto_0
    return v3

    .line 1000
    .end local v3    # "ret":I
    .restart local v2    # "ret":I
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1002
    .local v0, "cameraImageBucketName":Ljava/lang/String;
    const-string v7, "VTManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cameraImageBucketName is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/mediatek/vt/VTManager;->mDateTakenRecording:J

    .line 1006
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd_kk.mm.ss.SSS"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/mediatek/vt/VTManager;->mDateTakenRecording:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1010
    .local v6, "timeSuffix":Ljava/lang/String;
    if-ne v10, p1, :cond_1

    .line 1011
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Video_and_Audio_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/mediatek/vt/VTManager;->mRecordedFileName:Ljava/lang/String;

    .line 1022
    :goto_1
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1024
    .local v4, "sampleDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1025
    const-string v7, "VTManager"

    const-string v8, "----- file can\'t write!! ---"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/PhoneRecord/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/vt/VTManager;->mRecordedFileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".3gp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/mediatek/vt/VTManager;->mRecordedFilePath:Ljava/lang/String;

    .line 1028
    const-string v7, "VTManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "recordedFileName is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/vt/VTManager;->mRecordedFilePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/PhoneRecord/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1032
    .local v1, "recordDirectory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1043
    .end local v1    # "recordDirectory":Ljava/io/File;
    :goto_2
    iget-object v7, p0, Lcom/mediatek/vt/VTManager;->mRecordedFilePath:Ljava/lang/String;

    invoke-static {p1, v7, p2, p3}, Lcom/mediatek/vt/VTelProvider;->startRecording(ILjava/lang/String;J)I

    move-result v2

    .line 1044
    if-ne v10, v2, :cond_6

    .line 1045
    const-string v7, "VTManager"

    const-string v8, "VT_RET_FROM_JNI_FALSE == ret in startRecording() in VTManager.java"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1046
    .end local v2    # "ret":I
    .restart local v3    # "ret":I
    goto/16 :goto_0

    .line 1012
    .end local v3    # "ret":I
    .end local v4    # "sampleDir":Ljava/io/File;
    .restart local v2    # "ret":I
    :cond_1
    const/4 v7, 0x2

    if-ne v7, p1, :cond_2

    .line 1013
    const-string v7, "VTManager"

    const-string v8, "type is wrong in startRecording() in VTManager.java"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1014
    .end local v2    # "ret":I
    .restart local v3    # "ret":I
    goto/16 :goto_0

    .line 1015
    .end local v3    # "ret":I
    .restart local v2    # "ret":I
    :cond_2
    const/4 v7, 0x3

    if-ne v7, p1, :cond_3

    .line 1016
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Only_Peer_Video_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/mediatek/vt/VTManager;->mRecordedFileName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1018
    :cond_3
    const-string v7, "VTManager"

    const-string v8, "type is wrong in startRecording() in VTManager.java"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1019
    .end local v2    # "ret":I
    .restart local v3    # "ret":I
    goto/16 :goto_0

    .line 1034
    .end local v3    # "ret":I
    .restart local v2    # "ret":I
    .restart local v4    # "sampleDir":Ljava/io/File;
    :cond_4
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/PhoneRecord"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1035
    .end local v4    # "sampleDir":Ljava/io/File;
    .local v5, "sampleDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_5

    .line 1036
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 1038
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/vt/VTManager;->mRecordedFileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".3gp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/mediatek/vt/VTManager;->mRecordedFilePath:Ljava/lang/String;

    .line 1039
    const-string v7, "VTManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "recordedFileName is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/vt/VTManager;->mRecordedFilePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5    # "sampleDir":Ljava/io/File;
    .restart local v4    # "sampleDir":Ljava/io/File;
    goto/16 :goto_2

    :cond_6
    move v3, v2

    .line 1049
    .end local v2    # "ret":I
    .restart local v3    # "ret":I
    goto/16 :goto_0
.end method

.method public stopRecording()I
    .locals 12

    .prologue
    const/4 v10, 0x1

    .line 1053
    const-string v8, "VTManager"

    const-string v9, "stopRecording() in VTManager.java"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    const/4 v2, 0x0

    .line 1056
    .local v2, "ret":I
    sget-object v8, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v9, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v8, v9, :cond_0

    .line 1057
    const-string v8, "VTManager"

    const-string v9, "stopRecording() in VTManager.java, State=CLOSE"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1101
    .end local v2    # "ret":I
    .local v3, "ret":I
    :goto_0
    return v3

    .line 1061
    .end local v3    # "ret":I
    .restart local v2    # "ret":I
    :cond_0
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->stopRecording()I

    move-result v2

    .line 1062
    if-ne v10, v2, :cond_1

    .line 1063
    const-string v8, "VTManager"

    const-string v9, "VT_RET_FROM_JNI_FALSE == ret in stopRecording() in VTManager.java"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1064
    .end local v2    # "ret":I
    .restart local v3    # "ret":I
    goto :goto_0

    .line 1068
    .end local v3    # "ret":I
    .restart local v2    # "ret":I
    :cond_1
    iget-object v8, p0, Lcom/mediatek/vt/VTManager;->mRecordedFilePath:Ljava/lang/String;

    if-nez v8, :cond_2

    .line 1069
    const-string v8, "VTManager"

    const-string v9, "null == recordedFilePath in stopRecording() in VTManager.java"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1070
    .end local v2    # "ret":I
    .restart local v3    # "ret":I
    goto :goto_0

    .line 1072
    .end local v3    # "ret":I
    .restart local v2    # "ret":I
    :cond_2
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/mediatek/vt/VTManager;->mRecordedFilePath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1073
    .local v7, "videoFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1074
    const-string v8, "VTManager"

    const-string v9, "***video_File does not exist in stopRecording()***"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :cond_3
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1078
    .local v6, "values":Landroid/content/ContentValues;
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 1079
    .local v4, "size":J
    const-string v8, "title"

    iget-object v9, p0, Lcom/mediatek/vt/VTManager;->mRecordedFileName:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    const-string v8, "_display_name"

    iget-object v9, p0, Lcom/mediatek/vt/VTManager;->mRecordedFileName:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    const-string v8, "datetaken"

    iget-wide v9, p0, Lcom/mediatek/vt/VTManager;->mDateTakenRecording:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1082
    const-string v8, "mime_type"

    const-string v9, "video/3gpp"

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    const-string v8, "_size"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1084
    const-string v8, "_data"

    iget-object v9, p0, Lcom/mediatek/vt/VTManager;->mRecordedFilePath:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    iget-object v8, p0, Lcom/mediatek/vt/VTManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1094
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    sget-object v8, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1095
    iget-object v8, p0, Lcom/mediatek/vt/VTManager;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v3, v2

    .line 1101
    .end local v2    # "ret":I
    .restart local v3    # "ret":I
    goto/16 :goto_0

    .line 1097
    .end local v3    # "ret":I
    .restart local v2    # "ret":I
    :catch_0
    move-exception v1

    .line 1098
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "VTManager"

    const-string v9, "insert fail in stopRecording()"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public switchCamera()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 593
    const/4 v0, 0x0

    .line 594
    .local v0, "ret":I
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mEndCallLock:Ljava/lang/Integer;

    monitor-enter v2

    .line 596
    :try_start_0
    sget-object v3, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v4, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v3, v4, :cond_1

    .line 597
    monitor-exit v2

    .line 602
    :cond_0
    :goto_0
    return v1

    .line 599
    :cond_1
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->switchCamera()I

    move-result v0

    .line 600
    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v3}, Lcom/mediatek/vt/VTSettings;->getCameraSettings()V

    .line 601
    monitor-exit v2

    .line 602
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 601
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public switchDisplaySurface()V
    .locals 2

    .prologue
    .line 575
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->READY:Lcom/mediatek/vt/VTManager$State;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v1, :cond_0

    .line 576
    const-string v0, "VTManager"

    const-string v1, "switchDisplaySurface, error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :goto_0
    return-void

    .line 579
    :cond_0
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getIsSwitch()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/mediatek/vt/VTSettings;->setIsSwitch(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public unlockPeerVideo()V
    .locals 2

    .prologue
    .line 978
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v1, :cond_0

    .line 979
    const-string v0, "VTManager"

    const-string v1, "unlockPeerVideo, vtmanager state error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :goto_0
    return-void

    .line 982
    :cond_0
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->unlockPeerVideo()I

    goto :goto_0
.end method

.method public unregisterVTListener()V
    .locals 2

    .prologue
    .line 495
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVTListenerLock:Ljava/lang/Integer;

    monitor-enter v1

    .line 496
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/mediatek/vt/VTManager;->mVTListener:Landroid/os/Handler;

    .line 497
    monitor-exit v1

    .line 498
    return-void

    .line 497
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
