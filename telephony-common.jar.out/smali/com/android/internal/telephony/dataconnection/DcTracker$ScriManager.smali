.class Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;
.super Ljava/lang/Object;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScriManager"
.end annotation


# static fields
.field protected static final DBG:Z = true

.field public static final SCRI_2G:I = 0x2

.field public static final SCRI_3G:I = 0x1

.field public static final SCRI_CS_SESSION_ONGOING:I = 0x1

.field public static final SCRI_MAX_RETRY_COUNTER:I = 0x3

.field public static final SCRI_MAX_RETRY_TIMERS:I = 0x7530

.field public static final SCRI_NONE:I = 0x0

.field public static final SCRI_NOT_ALLOWED:I = 0x5

.field public static final SCRI_NO_PS_DATA_SESSION:I = 0x3

.field public static final SCRI_PS_SIGNALLING_ONGOING:I = 0x2

.field public static final SCRI_RAU_ENABLED:I = 0x6

.field public static final SCRI_REQ_NOT_SENT:I = 0x4

.field public static final SCRI_RESULT_REQ_SENT:I = 0x0

.field public static final STATE_ACTIVATED:I = 0x2

.field public static final STATE_ACTIVIATING:I = 0x1

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_RETRY:I = 0x3


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field public mFirstESCRIRAUFollowOnProceed:Z

.field private mGuardTimerExpired:Z

.field private mNwType:I

.field public mPeriodicRAUFollowOnProceedEnable:Z

.field private mPsSession:Z

.field private mScriAddCounter:I

.field private mScriDataCounter:I

.field public mScriGuardTimer:I

.field private mScriNeeded:Z

.field public mScriPollTimer:I

.field public mScriRetryCounter:I

.field public mScriRetryTimer:I

.field private mScriState:I

.field public mScriTriggerDataCounter:I

.field public mScriTriggerDataOffCounter:I

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4045
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4033
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mPeriodicRAUFollowOnProceedEnable:Z

    .line 4034
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mFirstESCRIRAUFollowOnProceed:Z

    .line 4043
    const-string v0, "GSM"

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->LOG_TAG:Ljava/lang/String;

    .line 4046
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriGuardTimer:I

    .line 4047
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriPollTimer:I

    .line 4048
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriDataCounter:I

    .line 4049
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriRetryTimer:I

    .line 4050
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriAddCounter:I

    .line 4051
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriTriggerDataCounter:I

    .line 4052
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriTriggerDataOffCounter:I

    .line 4053
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriRetryCounter:I

    .line 4054
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mPsSession:Z

    .line 4056
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriNeeded:Z

    .line 4057
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mGuardTimerExpired:Z

    .line 4058
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriState:I

    .line 4060
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mNwType:I

    .line 4061
    return-void
.end method


# virtual methods
.method public getPsSessionStatus()Z
    .locals 1

    .prologue
    .line 4139
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mPsSession:Z

    return v0
.end method

.method public getScriNwType(I)I
    .locals 4
    .param p1, "networktype"    # I

    .prologue
    .line 4160
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SCRI]getScriNwType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4161
    const/4 v0, 0x0

    .line 4163
    .local v0, "nwType":I
    const/4 v1, 0x3

    if-lt p1, v1, :cond_0

    .line 4164
    const/4 v0, 0x1

    .line 4172
    :goto_0
    if-eqz v0, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mNwType:I

    if-eq v1, v0, :cond_3

    .line 4174
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mNwType:I

    .line 4179
    :goto_1
    return v0

    .line 4165
    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 4166
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 4168
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 4176
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getScriState()I
    .locals 1

    .prologue
    .line 4128
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriState:I

    return v0
.end method

.method public isDataTransmitting()Z
    .locals 15

    .prologue
    const-wide/16 v13, 0x0

    .line 4184
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-wide v7, v9, Lcom/android/internal/telephony/dataconnection/DcTracker;->scriTxPkts:J

    .local v7, "preTxPkts":J
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-wide v5, v9, Lcom/android/internal/telephony/dataconnection/DcTracker;->scriRxPkts:J

    .line 4186
    .local v5, "preRxPkts":J
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 4187
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    .line 4189
    .local v0, "curTxRxSum":Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->updateTxRxSum()V

    .line 4190
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-wide v10, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    iput-wide v10, v9, Lcom/android/internal/telephony/dataconnection/DcTracker;->scriTxPkts:J

    .line 4191
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-wide v10, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    iput-wide v10, v9, Lcom/android/internal/telephony/dataconnection/DcTracker;->scriRxPkts:J

    .line 4197
    .end local v0    # "curTxRxSum":Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;
    :goto_0
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[SCRI]tx: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ==> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-wide v11, v11, Lcom/android/internal/telephony/dataconnection/DcTracker;->scriTxPkts:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4198
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[SCRI]rx  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ==> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-wide v11, v11, Lcom/android/internal/telephony/dataconnection/DcTracker;->scriRxPkts:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4200
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-wide v9, v9, Lcom/android/internal/telephony/dataconnection/DcTracker;->scriTxPkts:J

    sub-long v3, v9, v7

    .line 4201
    .local v3, "deltaTx":J
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-wide v9, v9, Lcom/android/internal/telephony/dataconnection/DcTracker;->scriRxPkts:J

    sub-long v1, v9, v5

    .line 4202
    .local v1, "deltaRx":J
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[SCRI]delta rx "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " tx "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4204
    cmp-long v9, v3, v13

    if-gtz v9, :cond_0

    cmp-long v9, v1, v13

    if-lez v9, :cond_2

    :cond_0
    const/4 v9, 0x1

    :goto_1
    return v9

    .line 4193
    .end local v1    # "deltaRx":J
    .end local v3    # "deltaTx":J
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v10

    iput-wide v10, v9, Lcom/android/internal/telephony/dataconnection/DcTracker;->scriTxPkts:J

    .line 4194
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v10

    iput-wide v10, v9, Lcom/android/internal/telephony/dataconnection/DcTracker;->scriRxPkts:J

    goto/16 :goto_0

    .line 4204
    .restart local v1    # "deltaRx":J
    .restart local v3    # "deltaTx":J
    :cond_2
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public isPollTimerTrigger(Z)Z
    .locals 4
    .param p1, "isScreenOn"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4152
    if-eqz p1, :cond_2

    .line 4153
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriDataCounter:I

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriTriggerDataCounter:I

    if-lt v2, v3, :cond_1

    .line 4155
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 4153
    goto :goto_0

    .line 4155
    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriDataCounter:I

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriTriggerDataOffCounter:I

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4113
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriNeeded:Z

    .line 4114
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mGuardTimerExpired:Z

    .line 4115
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mPsSession:Z

    .line 4116
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriRetryCounter:I

    .line 4117
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriState:I

    .line 4118
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriDataCounter:I

    .line 4119
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriPollTimer:I

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriAddCounter:I

    .line 4120
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->setScriTimer()V

    .line 4121
    return-void
.end method

.method public setPsSessionStatus(Z)V
    .locals 1
    .param p1, "hasPsSession"    # Z

    .prologue
    .line 4132
    if-eqz p1, :cond_0

    .line 4133
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriRetryCounter:I

    .line 4135
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mPsSession:Z

    .line 4136
    return-void
.end method

.method public setScriDataCount(Z)V
    .locals 3
    .param p1, "reset"    # Z

    .prologue
    .line 4143
    if-nez p1, :cond_0

    .line 4144
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriDataCounter:I

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriAddCounter:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriDataCounter:I

    .line 4148
    :goto_0
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SCRI]setScriDataCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriDataCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4149
    return-void

    .line 4146
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriDataCounter:I

    goto :goto_0
.end method

.method public setScriState(I)V
    .locals 0
    .param p1, "scriState"    # I

    .prologue
    .line 4124
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriState:I

    .line 4125
    return-void
.end method

.method public setScriTimer()V
    .locals 9

    .prologue
    const/16 v8, 0x258

    const/16 v5, 0xe10

    const/16 v7, 0x14

    const/4 v6, 0x5

    .line 4065
    const/4 v1, 0x0

    .line 4066
    .local v1, "str":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4070
    .local v2, "val":Ljava/lang/Integer;
    :try_start_0
    const-string v3, "persist.radio.fd.guard.timer"

    const-string v4, "60"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4071
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4072
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v6, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v5, :cond_1

    :cond_0
    const/16 v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4073
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriGuardTimer:I

    .line 4076
    const-string v3, "persist.radio.fd.poll.timer"

    const-string v4, "5"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4077
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4078
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v8, :cond_3

    :cond_2
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4079
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriAddCounter:I

    .line 4080
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriPollTimer:I

    .line 4083
    const-string v3, "persist.radio.fd.counter"

    const-string v4, "20"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4084
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4085
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v6, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v5, :cond_5

    :cond_4
    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4086
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriTriggerDataCounter:I

    .line 4089
    const-string v3, "persist.radio.fd.off.counter"

    const-string v4, "20"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4090
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4091
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v6, :cond_6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v5, :cond_7

    :cond_6
    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4092
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriTriggerDataOffCounter:I

    .line 4095
    const-string v3, "persist.radio.fd.retry.timer"

    const-string v4, "20"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4096
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4097
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v6, :cond_8

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v8, :cond_9

    :cond_8
    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4098
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriRetryTimer:I

    .line 4100
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SCRI] init value ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriGuardTimer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriPollTimer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriTriggerDataCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriTriggerDataOffCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriRetryTimer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4110
    :goto_0
    return-void

    .line 4101
    :catch_0
    move-exception v0

    .line 4102
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4103
    const v3, 0xea60

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriGuardTimer:I

    .line 4104
    const/16 v3, 0x1388

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriPollTimer:I

    .line 4105
    iput v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriTriggerDataCounter:I

    .line 4106
    iput v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriTriggerDataOffCounter:I

    .line 4107
    const/16 v3, 0x4e20

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriRetryTimer:I

    .line 4108
    iput v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriAddCounter:I

    goto :goto_0
.end method