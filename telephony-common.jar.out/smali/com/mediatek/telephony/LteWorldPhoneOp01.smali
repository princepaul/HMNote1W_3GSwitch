.class public Lcom/mediatek/telephony/LteWorldPhoneOp01;
.super Landroid/os/Handler;
.source "LteWorldPhoneOp01.java"

# interfaces
.implements Lcom/mediatek/common/telephony/IWorldPhone;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 71
    return-void
.end method

.method private contain4gRat(I)Z
    .locals 1
    .param p1, "ratMode"    # I

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method private get3gCapabilitySim()I
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method private getIccCardType(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method private getPreferredRatMode(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method private getRegion(Ljava/lang/String;)I
    .locals 1
    .param p1, "srcMccOrPlmn"    # Ljava/lang/String;

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method private getUserType(Ljava/lang/String;)I
    .locals 1
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method private handle3gSwitched()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method private handleNoService()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method private handlePlmnChange(Landroid/os/AsyncResult;IZ)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "slotId"    # I
    .param p3, "isDcEvent"    # Z

    .prologue
    .line 93
    return-void
.end method

.method private handlePlmnSuspend(Landroid/os/AsyncResult;IZ)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "slotId"    # I
    .param p3, "isDcEvent"    # Z

    .prologue
    .line 96
    return-void
.end method

.method private handleRadioOn(I)V
    .locals 0
    .param p1, "slotId"    # I

    .prologue
    .line 90
    return-void
.end method

.method private handleSwitchModem(I)V
    .locals 0
    .param p1, "toModem"    # I

    .prologue
    .line 113
    return-void
.end method

.method private isAllowCampOn(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "plmnString"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method private isInService()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method private isNoService()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 172
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LteWPOP01]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void
.end method

.method private removeModemStandByTimer()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method private replyCampOn(IZ)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "isDcEvent"    # Z

    .prologue
    .line 119
    return-void
.end method

.method private resetAllProperties()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method private resetNetworkProperties()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method private resetSimProperties()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method private resumeCampingProcedure(IZ)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "isDcEvent"    # Z

    .prologue
    .line 116
    return-void
.end method

.method private searchForDesignateService(Ljava/lang/String;)V
    .locals 0
    .param p1, "strPlmn"    # Ljava/lang/String;

    .prologue
    .line 84
    return-void
.end method

.method private setDesiredRatMode(I)V
    .locals 0
    .param p1, "slotId"    # I

    .prologue
    .line 138
    return-void
.end method

.method private setRatMode(II)V
    .locals 0
    .param p1, "ratMode"    # I
    .param p2, "slotId"    # I

    .prologue
    .line 141
    return-void
.end method


# virtual methods
.method public disposeWorldPhone()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 87
    return-void
.end method

.method public onNetworkModeChanged(II)I
    .locals 1
    .param p1, "currentNwMode"    # I
    .param p2, "newNwMode"    # I

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public setNetworkSelectionMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 166
    return-void
.end method

.method public setNetworkSelectionMode(II)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "modemType"    # I

    .prologue
    .line 110
    return-void
.end method
