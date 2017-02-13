.class Lcom/android/phone/CallCommandService;
.super Lcom/android/services/telephony/common/ICallCommandService$Stub;
.source "CallCommandService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallCommandService$Listener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudioRouter:Lcom/android/phone/AudioRouter;

.field private final mCallManager:Lcom/android/internal/telephony/CallManager;

.field private final mCallModeler:Lcom/android/phone/CallModeler;

.field private final mCallRecordingServiceProxy:Lcom/android/phone/CallRecordingServiceProxy;

.field private final mContext:Landroid/content/Context;

.field private final mDtmfTonePlayer:Lcom/android/phone/DTMFTonePlayer;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/CallCommandService$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mManualFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 55
    const-class v2, Lcom/android/phone/CallCommandService;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    .line 56
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/CallCommandService;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;Lcom/android/phone/CallModeler;Lcom/android/phone/DTMFTonePlayer;Lcom/android/phone/AudioRouter;Lcom/android/phone/CallRecordingServiceProxy;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callManager"    # Lcom/android/internal/telephony/CallManager;
    .param p3, "callModeler"    # Lcom/android/phone/CallModeler;
    .param p4, "dtmfTonePlayer"    # Lcom/android/phone/DTMFTonePlayer;
    .param p5, "audioRouter"    # Lcom/android/phone/AudioRouter;
    .param p6, "callRecordingServiceProxy"    # Lcom/android/phone/CallRecordingServiceProxy;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallCommandService;->mListeners:Ljava/util/ArrayList;

    .line 75
    iput-object p1, p0, Lcom/android/phone/CallCommandService;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/android/phone/CallCommandService;->mCallManager:Lcom/android/internal/telephony/CallManager;

    .line 77
    iput-object p3, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    .line 78
    iput-object p4, p0, Lcom/android/phone/CallCommandService;->mDtmfTonePlayer:Lcom/android/phone/DTMFTonePlayer;

    .line 79
    iput-object p5, p0, Lcom/android/phone/CallCommandService;->mAudioRouter:Lcom/android/phone/AudioRouter;

    .line 81
    iput-object p6, p0, Lcom/android/phone/CallCommandService;->mCallRecordingServiceProxy:Lcom/android/phone/CallRecordingServiceProxy;

    .line 82
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 581
    sget-object v0, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return-void
.end method


# virtual methods
.method public acceptIncomingCallByVoiceCommand(I)V
    .locals 0
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 476
    return-void
.end method

.method public acceptVtCallWithVoiceOnly()V
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/phone/CallCommandService;->mCallManager:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/CallCommandService;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->acceptVtCallWithVoiceOnly(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 559
    return-void
.end method

.method public addCall()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/phone/CallCommandService;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->startNewCall(Lcom/android/internal/telephony/CallManager;)Z

    .line 233
    return-void
.end method

.method public addListener(Lcom/android/phone/CallCommandService$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/phone/CallCommandService$Listener;

    .prologue
    .line 625
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    iget-object v0, p0, Lcom/android/phone/CallCommandService;->mListeners:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    iget-object v0, p0, Lcom/android/phone/CallCommandService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/android/phone/CallCommandService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    :cond_0
    return-void
.end method

.method public addVoLteConfMember(ILjava/lang/String;)V
    .locals 2
    .param p1, "conferenceId"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addVoLteConfMember... conferenId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCommandService;->log(Ljava/lang/String;)V

    .line 654
    invoke-static {p1, p2}, Lcom/mediatek/phone/volte/VoLteConfUtils;->addConferenceMember(ILjava/lang/String;)V

    .line 655
    return-void
.end method

.method public answerCall(I)V
    .locals 4
    .param p1, "callId"    # I

    .prologue
    .line 90
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v2, p1}, Lcom/android/phone/CallModeler;->getCallWithId(I)Lcom/android/phone/CallModeler$CallResult;

    move-result-object v1

    .line 91
    .local v1, "result":Lcom/android/phone/CallModeler$CallResult;
    if-eqz v1, :cond_0

    .line 97
    invoke-static {}, Lcom/android/phone/PhoneUtils;->internalAnswerCall()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v1    # "result":Lcom/android/phone/CallModeler$CallResult;
    :cond_0
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v3, "Error during answerCall()."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public canDecBrightness()Z
    .locals 1

    .prologue
    .line 495
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getVTManager()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->canDecBrightness()Z

    move-result v0

    return v0
.end method

.method public canDecContrast()Z
    .locals 1

    .prologue
    .line 504
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getVTManager()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->canDecContrast()Z

    move-result v0

    return v0
.end method

.method public canDecZoom()Z
    .locals 1

    .prologue
    .line 487
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getVTManager()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->canDecZoom()Z

    move-result v0

    return v0
.end method

.method public canIncBrightness()Z
    .locals 1

    .prologue
    .line 491
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getVTManager()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->canIncBrightness()Z

    move-result v0

    return v0
.end method

.method public canIncContrast()Z
    .locals 1

    .prologue
    .line 500
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getVTManager()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->canIncContrast()Z

    move-result v0

    return v0
.end method

.method public canIncZoom()Z
    .locals 1

    .prologue
    .line 483
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getVTManager()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->canIncZoom()Z

    move-result v0

    return v0
.end method

.method public checkCallRecordingState()V
    .locals 4

    .prologue
    .line 703
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallCommandService;->mCallRecordingServiceProxy:Lcom/android/phone/CallRecordingServiceProxy;

    invoke-virtual {v1}, Lcom/android/phone/CallRecordingServiceProxy;->checkCallRecordingState()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :goto_0
    return-void

    .line 704
    :catch_0
    move-exception v0

    .line 705
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error checkCallRecordingState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkRecordable()Z
    .locals 4

    .prologue
    .line 672
    iget-object v1, p0, Lcom/android/phone/CallCommandService;->mCallRecordingServiceProxy:Lcom/android/phone/CallRecordingServiceProxy;

    iget-boolean v2, p0, Lcom/android/phone/CallCommandService;->mManualFlag:Z

    iget-object v0, p0, Lcom/android/phone/CallCommandService;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/phone/PhoneGlobals;

    iget-object v3, p0, Lcom/android/phone/CallCommandService;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/phone/CallRecordingServiceProxy;->checkRecordable(ZLcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    return v0
.end method

.method public clearVoiceCommandHandler()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 472
    return-void
.end method

.method public decBrightness()V
    .locals 1

    .prologue
    .line 447
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->decBrightness()V

    .line 448
    return-void
.end method

.method public decContrast()V
    .locals 1

    .prologue
    .line 455
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->decContrast()V

    .line 456
    return-void
.end method

.method public decZoom()V
    .locals 1

    .prologue
    .line 435
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->decZoom()V

    .line 436
    return-void
.end method

.method public disconnectCall(I)V
    .locals 6
    .param p1, "callId"    # I

    .prologue
    .line 152
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v3, p1}, Lcom/android/phone/CallModeler;->getCallWithId(I)Lcom/android/phone/CallModeler$CallResult;

    move-result-object v1

    .line 154
    .local v1, "result":Lcom/android/phone/CallModeler$CallResult;
    if-eqz v1, :cond_2

    .line 155
    sget-boolean v3, Lcom/android/phone/CallCommandService;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disconnectCall "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isVT="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    .line 157
    .local v2, "state":I
    const/4 v3, 0x2

    if-eq v3, v2, :cond_1

    const/4 v3, 0x7

    if-eq v3, v2, :cond_1

    const/4 v3, 0x6

    if-eq v3, v2, :cond_1

    const/4 v3, 0x5

    if-ne v3, v2, :cond_3

    .line 161
    :cond_1
    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 169
    .end local v1    # "result":Lcom/android/phone/CallModeler$CallResult;
    .end local v2    # "state":I
    :cond_2
    :goto_0
    return-void

    .line 162
    .restart local v1    # "result":Lcom/android/phone/CallModeler$CallResult;
    .restart local v2    # "state":I
    :cond_3
    const/16 v3, 0xa

    if-ne v3, v2, :cond_2

    .line 163
    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    .end local v1    # "result":Lcom/android/phone/CallModeler$CallResult;
    .end local v2    # "state":I
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v4, "Error during disconnectCall()."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enlargeDisplaySurface(Z)V
    .locals 0
    .param p1, "isEnlarge"    # Z

    .prologue
    .line 424
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 1

    .prologue
    .line 573
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->explicitCallTransfer(Lcom/android/internal/telephony/Phone;)V

    .line 574
    return-void
.end method

.method public getColorEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 533
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getVTManager()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getColorEffect()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecordableConnection()Lcom/android/internal/telephony/Connection;
    .locals 5

    .prologue
    .line 678
    iget-object v2, p0, Lcom/android/phone/CallCommandService;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 679
    .local v0, "latestConnection":Lcom/android/internal/telephony/Connection;
    iget-object v3, p0, Lcom/android/phone/CallCommandService;->mCallRecordingServiceProxy:Lcom/android/phone/CallRecordingServiceProxy;

    iget-boolean v4, p0, Lcom/android/phone/CallCommandService;->mManualFlag:Z

    iget-object v2, p0, Lcom/android/phone/CallCommandService;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3, v4, v2, v0}, Lcom/android/phone/CallRecordingServiceProxy;->checkRecordable(ZLcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Connection;)Z

    move-result v1

    .line 681
    .local v1, "recordable":Z
    if-eqz v1, :cond_0

    .end local v0    # "latestConnection":Lcom/android/internal/telephony/Connection;
    :goto_0
    return-object v0

    .restart local v0    # "latestConnection":Lcom/android/internal/telephony/Connection;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRedialTimes()I
    .locals 4

    .prologue
    .line 711
    const/4 v1, -0x1

    .line 713
    .local v1, "redialTimes":I
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier;->getRedialTimes()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 717
    :goto_0
    return v1

    .line 714
    :catch_0
    move-exception v0

    .line 715
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v3, "Error getRedialTimes()."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
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
    .line 537
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getVTManager()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVTState()I
    .locals 1

    .prologue
    .line 525
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoQuality()I
    .locals 1

    .prologue
    .line 529
    const/4 v0, 0x1

    return v0
.end method

.method public hangupActiveAndAnswerWaiting()V
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/phone/CallCommandService;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/android/phone/CallCommandService;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    .line 570
    :cond_0
    return-void
.end method

.method public hangupAllCalls()V
    .locals 0

    .prologue
    .line 550
    invoke-static {}, Lcom/android/phone/PhoneUtils;->hangupAllCalls()V

    .line 551
    return-void
.end method

.method public hangupHoldingCall()V
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/phone/CallCommandService;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    .line 555
    return-void
.end method

.method public hideLocal(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 512
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/phone/vt/VTManagerWrapper;->hideLocal(Z)V

    .line 513
    return-void
.end method

.method public hold(IZ)V
    .locals 0
    .param p1, "callId"    # I
    .param p2, "hold"    # Z

    .prologue
    .line 218
    invoke-static {}, Lcom/android/phone/PhoneUtils;->onHoldClick()V

    .line 220
    return-void
.end method

.method public incBrightness()V
    .locals 1

    .prologue
    .line 443
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->incBrightness()V

    .line 444
    return-void
.end method

.method public incContrast()V
    .locals 1

    .prologue
    .line 451
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->incContrast()V

    .line 452
    return-void
.end method

.method public incZoom()V
    .locals 1

    .prologue
    .line 439
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->incZoom()V

    .line 440
    return-void
.end method

.method public incomingVTCall(I)V
    .locals 0
    .param p1, "flag"    # I

    .prologue
    .line 377
    return-void
.end method

.method public isCallRecording()Z
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/phone/CallCommandService;->mCallRecordingServiceProxy:Lcom/android/phone/CallRecordingServiceProxy;

    invoke-virtual {v0}, Lcom/android/phone/CallRecordingServiceProxy;->isCallRecording()Z

    move-result v0

    return v0
.end method

.method public isNightMode()Z
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportNightMode()Z
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x0

    return v0
.end method

.method public lockPeerVideo()V
    .locals 1

    .prologue
    .line 399
    const-string v0, "lockPeerVideo()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallCommandService;->log(Ljava/lang/String;)V

    .line 400
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->lockPeerVideo()V

    .line 401
    return-void
.end method

.method public merge()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/phone/CallCommandService;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/phone/CallCommandService;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    .line 227
    :cond_0
    return-void
.end method

.method public mute(Z)V
    .locals 3
    .param p1, "onOff"    # Z

    .prologue
    .line 274
    :try_start_0
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->setMute(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v2, "Error during mute()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDisconnected()V
    .locals 1

    .prologue
    .line 363
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->onDisconnected()V

    .line 364
    return-void
.end method

.method public onUiShowing(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUiShowing, show = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCommandService;->log(Ljava/lang/String;)V

    .line 609
    if-eqz p1, :cond_0

    .line 610
    invoke-static {}, Lcom/android/phone/PhoneUtils;->restoreMuteState()Ljava/lang/Boolean;

    .line 612
    :cond_0
    return-void
.end method

.method public onUserInput(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 419
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/phone/vt/VTManagerWrapper;->onUserInput(Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public playDtmfTone(CZ)V
    .locals 3
    .param p1, "digit"    # C
    .param p2, "timedShortTone"    # Z

    .prologue
    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallCommandService;->mDtmfTonePlayer:Lcom/android/phone/DTMFTonePlayer;

    invoke-virtual {v1, p1, p2}, Lcom/android/phone/DTMFTonePlayer;->playDtmfTone(CZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v2, "Error playing DTMF tone."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public postDialCancel(I)V
    .locals 2
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 318
    iget-object v1, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v1, p1}, Lcom/android/phone/CallModeler;->getCallWithId(I)Lcom/android/phone/CallModeler$CallResult;

    move-result-object v0

    .line 319
    .local v0, "result":Lcom/android/phone/CallModeler$CallResult;
    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->cancelPostDial()V

    .line 322
    :cond_0
    return-void
.end method

.method public postDialWaitContinue(I)V
    .locals 2
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 326
    iget-object v1, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v1, p1}, Lcom/android/phone/CallModeler;->getCallWithId(I)Lcom/android/phone/CallModeler$CallResult;

    move-result-object v0

    .line 327
    .local v0, "result":Lcom/android/phone/CallModeler$CallResult;
    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->proceedAfterWaitChar()V

    .line 330
    :cond_0
    return-void
.end method

.method public rejectCall(Lcom/android/services/telephony/common/Call;ZLjava/lang/String;)V
    .locals 8
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;
    .param p2, "rejectWithMessage"    # Z
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 111
    const/4 v0, -0x1

    .line 112
    .local v0, "callId":I
    :try_start_0
    const-string v3, ""

    .line 114
    .local v3, "phoneNumber":Ljava/lang/String;
    const/4 v5, 0x0

    .line 116
    .local v5, "slotId":I
    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v0

    .line 118
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getSlotId()I

    move-result v5

    .line 123
    :cond_0
    iget-object v6, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v6, v0}, Lcom/android/phone/CallModeler;->getCallWithId(I)Lcom/android/phone/CallModeler$CallResult;

    move-result-object v4

    .line 125
    .local v4, "result":Lcom/android/phone/CallModeler$CallResult;
    if-eqz v4, :cond_2

    .line 126
    invoke-virtual {v4}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 128
    if-eqz p1, :cond_1

    .line 129
    invoke-virtual {v4}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getBlockType()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/Connection;->setFirewallCode(I)V

    .line 131
    :cond_1
    sget-object v6, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v7, "Hanging up"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {v4}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 135
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 139
    const-string v6, "&"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "numbers":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v3, v2, v6

    .line 141
    invoke-static {v3, p3, v5}, Lcom/android/phone/RejectWithTextMessageManager;->rejectCallWithMessage(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v2    # "numbers":[Ljava/lang/String;
    .end local v3    # "phoneNumber":Ljava/lang/String;
    .end local v4    # "result":Lcom/android/phone/CallModeler$CallResult;
    .end local v5    # "slotId":I
    :cond_3
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v7, "Error during rejectCall()."

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public restartRinger()V
    .locals 1

    .prologue
    .line 585
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->restartRinger()V

    .line 586
    return-void
.end method

.method public savePeerPhoto()V
    .locals 1

    .prologue
    .line 508
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->savePeerPhoto()V

    .line 509
    return-void
.end method

.method public secondaryHoldPhotoClicked()V
    .locals 0

    .prologue
    .line 593
    invoke-static {}, Lcom/android/phone/PhoneUtils;->secondaryHoldPhotoClicked()V

    .line 594
    return-void
.end method

.method public secondaryPhotoClicked()V
    .locals 0

    .prologue
    .line 589
    invoke-static {}, Lcom/android/phone/PhoneUtils;->swapCallsByCondition()V

    .line 590
    return-void
.end method

.method public separateCall(I)V
    .locals 8
    .param p1, "callId"    # I

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 176
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v5, p1}, Lcom/android/phone/CallModeler;->getCallWithId(I)Lcom/android/phone/CallModeler$CallResult;

    move-result-object v3

    .line 177
    .local v3, "result":Lcom/android/phone/CallModeler$CallResult;
    sget-boolean v5, Lcom/android/phone/CallCommandService;->DBG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disconnectCall "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/phone/CallModeler$CallResult;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    if-eqz v3, :cond_1

    .line 180
    invoke-virtual {v3}, Lcom/android/phone/CallModeler$CallResult;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 181
    invoke-virtual {v3}, Lcom/android/phone/CallModeler$CallResult;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    .line 182
    .local v4, "state":I
    const/16 v5, 0xa

    if-ne v5, v4, :cond_1

    .line 183
    invoke-virtual {v3}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->separate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v3    # "result":Lcom/android/phone/CallModeler$CallResult;
    .end local v4    # "state":I
    :cond_1
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v6, "Error trying to separate call."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 191
    iget-object v5, p0, Lcom/android/phone/CallCommandService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b02e6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "errorMessage":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v5, v2}, Lcom/android/phone/CallModeler;->onSeparateSipCallFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAudioMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 310
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallCommandService;->mAudioRouter:Lcom/android/phone/AudioRouter;

    invoke-virtual {v1, p1}, Lcom/android/phone/AudioRouter;->setAudioMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v2, "Error setting the audio mode."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setColorEffect(Ljava/lang/String;)V
    .locals 1
    .param p1, "colorEffect"    # Ljava/lang/String;

    .prologue
    .line 431
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/phone/vt/VTManagerWrapper;->setColorEffect(Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public setDisplay(Landroid/view/Surface;Landroid/view/Surface;)V
    .locals 2
    .param p1, "local"    # Landroid/view/Surface;
    .param p2, "peer"    # Landroid/view/Surface;

    .prologue
    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisplay local="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " peer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCommandService;->log(Ljava/lang/String;)V

    .line 372
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->setDisplay(Landroid/view/Surface;Landroid/view/Surface;)V

    .line 373
    return-void
.end method

.method public setLocalView(ILjava/lang/String;)V
    .locals 0
    .param p1, "videoType"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 385
    return-void
.end method

.method public setManualFlag(Z)V
    .locals 0
    .param p1, "callRecordByManual"    # Z

    .prologue
    .line 668
    iput-boolean p1, p0, Lcom/android/phone/CallCommandService;->mManualFlag:Z

    .line 669
    return-void
.end method

.method public setNightMode(Z)V
    .locals 1
    .param p1, "isOnNight"    # Z

    .prologue
    .line 388
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/phone/vt/VTManagerWrapper;->setNightMode(Z)V

    .line 389
    return-void
.end method

.method public setSystemBarNavigationEnabled(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 335
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v1, v2, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    .line 337
    .local v1, "statusBarHelper":Lcom/android/phone/NotificationMgr$StatusBarHelper;
    invoke-virtual {v1, p1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    .line 338
    invoke-virtual {v1, p1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    .end local v1    # "statusBarHelper":Lcom/android/phone/NotificationMgr$StatusBarHelper;
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v3, "Error enabling or disabling system bar navigation"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setUpVoiceCommandService()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 464
    return-void
.end method

.method public setVTClose()V
    .locals 1

    .prologue
    .line 359
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->setVTClose()V

    .line 360
    return-void
.end method

.method public setVTConnected()V
    .locals 1

    .prologue
    .line 355
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->setVTConnected()V

    .line 356
    return-void
.end method

.method public setVTOpen(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 347
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallCommandService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/phone/vt/VTManagerWrapper;->setVTOpen(Landroid/content/Context;I)V

    .line 348
    return-void
.end method

.method public setVTReady()V
    .locals 1

    .prologue
    .line 351
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->setVTReady()V

    .line 352
    return-void
.end method

.method public setVTVisible(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 367
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/phone/vt/VTManagerWrapper;->setVTVisible(Z)V

    .line 368
    return-void
.end method

.method public setVTVoiceAnswerRelated(ZLjava/lang/String;)V
    .locals 1
    .param p1, "vtVoiceAnswer"    # Z
    .param p2, "vtVoiceAnswerPhoneNumber"    # Ljava/lang/String;

    .prologue
    .line 562
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean p1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTVoiceAnswer:Z

    .line 563
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-object p2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTVoiceAnswerPhoneNumber:Ljava/lang/String;

    .line 564
    return-void
.end method

.method public setVideoQuality(I)V
    .locals 1
    .param p1, "quality"    # I

    .prologue
    .line 392
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/phone/vt/VTManagerWrapper;->setVideoQuality(I)V

    .line 393
    return-void
.end method

.method public silenceRinger()V
    .locals 1

    .prologue
    .line 577
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 578
    return-void
.end method

.method public speaker(Z)V
    .locals 3
    .param p1, "onOff"    # Z

    .prologue
    .line 283
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallCommandService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v2, "Error during speaker()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startCallRecord()V
    .locals 2

    .prologue
    .line 661
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallCommandService;->mManualFlag:Z

    .line 662
    iget-object v0, p0, Lcom/android/phone/CallCommandService;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 663
    iget-object v0, p0, Lcom/android/phone/CallCommandService;->mCallRecordingServiceProxy:Lcom/android/phone/CallRecordingServiceProxy;

    invoke-virtual {v0}, Lcom/android/phone/CallRecordingServiceProxy;->startCallRecording()V

    .line 665
    :cond_0
    return-void
.end method

.method public startVoiceRecording()V
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/phone/CallCommandService;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->okToRecordVoice(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->startVoiceRecord(I)V

    .line 547
    :goto_0
    return-void

    .line 545
    :cond_0
    const-string v0, "Can not start voice recording!!"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCommandService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startVtRecording(IJ)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "maxSize"    # J

    .prologue
    .line 404
    const-string v0, "start vt recording"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCommandService;->log(Ljava/lang/String;)V

    .line 405
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->startVideoRecord(IJI)V

    .line 407
    return-void
.end method

.method public stopCallRecord()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 691
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallCommandService;->mCallRecordingServiceProxy:Lcom/android/phone/CallRecordingServiceProxy;

    invoke-virtual {v1}, Lcom/android/phone/CallRecordingServiceProxy;->stopCallRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    sget-object v1, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v2, "set manual flag false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iput-boolean v4, p0, Lcom/android/phone/CallCommandService;->mManualFlag:Z

    .line 698
    :goto_0
    return-void

    .line 692
    :catch_0
    move-exception v0

    .line 693
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error stopCallRecording: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 695
    sget-object v1, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v2, "set manual flag false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iput-boolean v4, p0, Lcom/android/phone/CallCommandService;->mManualFlag:Z

    goto :goto_0

    .line 695
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    sget-object v2, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v3, "set manual flag false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iput-boolean v4, p0, Lcom/android/phone/CallCommandService;->mManualFlag:Z

    throw v1
.end method

.method public stopDtmfTone()V
    .locals 3

    .prologue
    .line 301
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallCommandService;->mDtmfTonePlayer:Lcom/android/phone/DTMFTonePlayer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTonePlayer;->stopDtmfTone()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_0
    return-void

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v2, "Error stopping DTMF tone."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopRecording()V
    .locals 1

    .prologue
    .line 410
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->stopRecording()V

    .line 411
    return-void
.end method

.method public stopVoiceCommand()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 468
    return-void
.end method

.method public swap()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/phone/CallCommandService;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->okToSwapCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->onSwapClick()V

    goto :goto_0
.end method

.method public switchCalls()V
    .locals 1

    .prologue
    .line 601
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/DualTalkUtils;->switchCalls()V

    .line 602
    return-void
.end method

.method public switchCamera()V
    .locals 1

    .prologue
    .line 427
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->switchCamera()V

    .line 428
    return-void
.end method

.method public switchDisplaySurface()V
    .locals 0

    .prologue
    .line 381
    return-void
.end method

.method public switchRingtoneForDualTalk()V
    .locals 1

    .prologue
    .line 597
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->switchRingtoneForDualTalk()V

    .line 598
    return-void
.end method

.method public unbindAfterUiUpdate()V
    .locals 3

    .prologue
    .line 633
    const-string v2, "unbindAfterUIupdate, msg_what"

    invoke-direct {p0, v2}, Lcom/android/phone/CallCommandService;->log(Ljava/lang/String;)V

    .line 634
    iget-object v2, p0, Lcom/android/phone/CallCommandService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallCommandService$Listener;

    .line 635
    .local v1, "mListener":Lcom/android/phone/CallCommandService$Listener;
    invoke-interface {v1}, Lcom/android/phone/CallCommandService$Listener;->unbindAfterUiUpdate()V

    goto :goto_0

    .line 637
    .end local v1    # "mListener":Lcom/android/phone/CallCommandService$Listener;
    :cond_0
    return-void
.end method

.method public unlockPeerVideo()V
    .locals 1

    .prologue
    .line 414
    const-string v0, "unlockPeerVideo()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallCommandService;->log(Ljava/lang/String;)V

    .line 415
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->unlockPeerVideo()V

    .line 416
    return-void
.end method

.method public updatePicToReplaceLocalVideo()V
    .locals 1

    .prologue
    .line 459
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->updatePicToReplaceLocalVideo()V

    .line 460
    return-void
.end method

.method public updatePowerForSmartBook(Z)V
    .locals 2
    .param p1, "onOff"    # Z

    .prologue
    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePowerForSmartBook()... onOff: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCommandService;->log(Ljava/lang/String;)V

    .line 644
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneGlobals;->updatePowerForSmartBook(Z)V

    .line 645
    return-void
.end method

.method public updateVoiceCommand()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 480
    return-void
.end method
