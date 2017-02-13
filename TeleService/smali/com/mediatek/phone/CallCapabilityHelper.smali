.class public Lcom/mediatek/phone/CallCapabilityHelper;
.super Ljava/lang/Object;
.source "CallCapabilityHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InCallMenuState"


# instance fields
.field public canECT:Z

.field public canHangupActiveAndAnswerWaiting:Z

.field public canHangupAll:Z

.field public canHangupHolding:Z

.field public canMuteRinger:Z

.field public canRecord:Z

.field public canShowSwap:Z

.field public canVTVoiceAnswer:Z

.field protected mCM:Lcom/android/internal/telephony/CallManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .param p1, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/mediatek/phone/CallCapabilityHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 31
    return-void
.end method

.method public static canECT(Lcom/android/internal/telephony/CallManager;)Z
    .locals 14
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    const/4 v13, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 111
    const/4 v8, 0x0

    .line 113
    .local v8, "retval":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v4

    .line 114
    .local v4, "hasActiveFgCall":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    .line 115
    .local v3, "hasActiveBgCall":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v5

    .line 117
    .local v5, "hasActiveRingingCall":Z
    const/4 v2, 0x0

    .line 118
    .local v2, "fgCall":Lcom/android/internal/telephony/Call;
    const/4 v0, 0x0

    .line 120
    .local v0, "bgCall":Lcom/android/internal/telephony/Call;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v1

    .line 121
    .local v1, "dt":Lcom/mediatek/phone/DualTalkUtils;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v12

    if-eqz v12, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->isDualTalkMultipleHoldCase()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 124
    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 125
    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 131
    :goto_0
    if-eqz v5, :cond_1

    .line 132
    const/4 v8, 0x0

    move v9, v8

    .line 144
    .end local v8    # "retval":Z
    .local v9, "retval":I
    :goto_1
    return v9

    .line 127
    .end local v9    # "retval":I
    .restart local v8    # "retval":Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 128
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0

    .line 136
    :cond_1
    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 137
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    if-ne v12, v13, :cond_3

    move v7, v10

    .line 138
    .local v7, "isFgSipPhone":Z
    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    if-ne v12, v13, :cond_4

    move v6, v10

    .line 139
    .local v6, "isBgSipPhone":Z
    :goto_3
    if-nez v7, :cond_2

    if-nez v6, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    if-ne v10, v11, :cond_2

    .line 140
    const/4 v8, 0x1

    .end local v6    # "isBgSipPhone":Z
    .end local v7    # "isFgSipPhone":Z
    :cond_2
    move v9, v8

    .line 144
    .restart local v9    # "retval":I
    goto :goto_1

    .end local v9    # "retval":I
    :cond_3
    move v7, v11

    .line 137
    goto :goto_2

    .restart local v7    # "isFgSipPhone":Z
    :cond_4
    move v6, v11

    .line 138
    goto :goto_3
.end method

.method public static canHangupActiveAndAnswerWaiting(Lcom/android/internal/telephony/CallManager;)Z
    .locals 11
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 90
    const/4 v5, 0x0

    .line 92
    .local v5, "retval":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 93
    .local v1, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 94
    .local v0, "bgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 96
    .local v6, "rgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_1

    move v3, v7

    .line 97
    .local v3, "isFgActive":Z
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_2

    move v2, v7

    .line 98
    .local v2, "isBgIdle":Z
    :goto_1
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_3

    move v4, v7

    .line 100
    .local v4, "isRgWaiting":Z
    :goto_2
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    .line 101
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    if-ne v7, v8, :cond_0

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v7

    if-nez v7, :cond_0

    .line 103
    const/4 v5, 0x1

    .line 107
    :cond_0
    return v5

    .end local v2    # "isBgIdle":Z
    .end local v3    # "isFgActive":Z
    .end local v4    # "isRgWaiting":Z
    :cond_1
    move v3, v8

    .line 96
    goto :goto_0

    .restart local v3    # "isFgActive":Z
    :cond_2
    move v2, v8

    .line 97
    goto :goto_1

    .restart local v2    # "isBgIdle":Z
    :cond_3
    move v4, v8

    .line 98
    goto :goto_2
.end method

.method public static canHangupAll(Lcom/android/internal/telephony/CallManager;)Z
    .locals 6
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 50
    .local v1, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 51
    .local v0, "bgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 53
    .local v3, "rgCall":Lcom/android/internal/telephony/Call;
    const/4 v2, 0x0

    .line 54
    .local v2, "retval":Z
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    .line 55
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_5

    .line 56
    const/4 v2, 0x1

    .line 62
    :cond_0
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_3

    .line 63
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_3

    .line 64
    :cond_2
    const/4 v2, 0x1

    .line 68
    :cond_3
    if-nez v2, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneUtils;->hasMultiplePhoneActive()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 69
    const/4 v2, 0x1

    .line 72
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canHangupAll = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/phone/CallCapabilityHelper;->log(Ljava/lang/String;)V

    .line 73
    return v2

    .line 57
    :cond_5
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hasActivefgEccCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static canHangupHolding(Lcom/android/internal/telephony/CallManager;)Z
    .locals 5
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isEvdoDTSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v1

    .line 81
    .local v1, "dt":Lcom/mediatek/phone/DualTalkUtils;
    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->isCDMAPhoneActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    .end local v1    # "dt":Lcom/mediatek/phone/DualTalkUtils;
    :cond_0
    :goto_0
    return v2

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 86
    .local v0, "bgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static canIncomingMenuShow(Lcom/android/internal/telephony/CallManager;)Z
    .locals 1
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 162
    invoke-static {p0}, Lcom/mediatek/phone/CallCapabilityHelper;->canHangupActiveAndAnswerWaiting(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mediatek/phone/CallCapabilityHelper;->canVTVoiceAnswer()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canMuteRinger()Z
    .locals 1

    .prologue
    .line 158
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->ringer:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v0

    return v0
.end method

.method public static canVTVoiceAnswer()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 45
    const-string v0, "InCallMenuState"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method


# virtual methods
.method public update()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/phone/CallCapabilityHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/mediatek/phone/CallCapabilityHelper;->canHangupAll(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/phone/CallCapabilityHelper;->canHangupAll:Z

    .line 35
    iget-object v0, p0, Lcom/mediatek/phone/CallCapabilityHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/mediatek/phone/CallCapabilityHelper;->canHangupHolding(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/phone/CallCapabilityHelper;->canHangupHolding:Z

    .line 36
    iget-object v0, p0, Lcom/mediatek/phone/CallCapabilityHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/mediatek/phone/CallCapabilityHelper;->canHangupActiveAndAnswerWaiting(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/phone/CallCapabilityHelper;->canHangupActiveAndAnswerWaiting:Z

    .line 37
    iget-object v0, p0, Lcom/mediatek/phone/CallCapabilityHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/mediatek/phone/CallCapabilityHelper;->canECT(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/phone/CallCapabilityHelper;->canECT:Z

    .line 38
    invoke-static {}, Lcom/mediatek/phone/CallCapabilityHelper;->canVTVoiceAnswer()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/phone/CallCapabilityHelper;->canVTVoiceAnswer:Z

    .line 39
    invoke-static {}, Lcom/mediatek/phone/CallCapabilityHelper;->canMuteRinger()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/phone/CallCapabilityHelper;->canMuteRinger:Z

    .line 40
    iget-object v0, p0, Lcom/mediatek/phone/CallCapabilityHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->okToRecordVoice(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/phone/CallCapabilityHelper;->canRecord:Z

    .line 41
    iget-object v0, p0, Lcom/mediatek/phone/CallCapabilityHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->okToShowSwapButton(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/phone/CallCapabilityHelper;->canShowSwap:Z

    .line 42
    return-void
.end method
