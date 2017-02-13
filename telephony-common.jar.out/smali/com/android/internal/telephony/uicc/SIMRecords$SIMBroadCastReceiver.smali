.class Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIMBroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/SIMRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V
    .locals 0

    .prologue
    .line 3148
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/SIMRecords;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/SIMRecords$1;

    .prologue
    .line 3148
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 3150
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3151
    .local v0, "action":Ljava/lang/String;
    const-string v5, "com.mediatek.dm.LAWMO_WIPE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3152
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    # invokes: Lcom/android/internal/telephony/uicc/SIMRecords;->wipeAllSIMContacts()V
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$400(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    .line 3214
    :cond_0
    :goto_0
    return-void

    .line 3154
    :cond_1
    const-string v5, "action_pin_dismiss"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3155
    const-string v5, "simslot"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3156
    .local v2, "simId":I
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    # getter for: Lcom/android/internal/telephony/uicc/SIMRecords;->mSimId:I
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$500(Lcom/android/internal/telephony/uicc/SIMRecords;)I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 3157
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIMRecords receive pin dismiss intent for slot "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3158
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/uicc/SIMRecords;->setDefaultNameForNewSIM(Ljava/lang/String;)V

    goto :goto_0

    .line 3160
    .end local v2    # "simId":I
    :cond_2
    const-string v5, "action_melock_dismiss"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3161
    const-string v5, "simslot"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3162
    .restart local v2    # "simId":I
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    # getter for: Lcom/android/internal/telephony/uicc/SIMRecords;->mSimId:I
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$500(Lcom/android/internal/telephony/uicc/SIMRecords;)I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 3163
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIMRecords receive SIM ME lock dismiss intent for slot "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3164
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/uicc/SIMRecords;->setDefaultNameForNewSIM(Ljava/lang/String;)V

    goto :goto_0

    .line 3166
    .end local v2    # "simId":I
    :cond_3
    const-string v5, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3167
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    # invokes: Lcom/android/internal/telephony/uicc/SIMRecords;->processShutdownIPO()V
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$600(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    .line 3169
    const-string v5, "gsm.sim.operator.default-name"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3171
    const-string v5, "gsm.sim.operator.default-name.2"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3174
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    # getter for: Lcom/android/internal/telephony/uicc/SIMRecords;->SIM_RECORDS_PROPERTY_ECC_LIST:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$700(Lcom/android/internal/telephony/uicc/SIMRecords;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    # getter for: Lcom/android/internal/telephony/uicc/SIMRecords;->mSimId:I
    invoke-static {v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$500(Lcom/android/internal/telephony/uicc/SIMRecords;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3177
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const-string v6, "wipeAllSIMContacts ACTION_SHUTDOWN_IPO: reset mCspPlmnEnabled"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3178
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    .line 3181
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    # getter for: Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$800(Lcom/android/internal/telephony/uicc/SIMRecords;)Lcom/mediatek/common/telephony/ITelephonyExt;

    move-result-object v5

    invoke-interface {v5}, Lcom/mediatek/common/telephony/ITelephonyExt;->isSetLanguageBySIM()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3182
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    # setter for: Lcom/android/internal/telephony/uicc/SIMRecords;->mEfRatLoaded:Z
    invoke-static {v5, v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$902(Lcom/android/internal/telephony/uicc/SIMRecords;Z)Z

    .line 3183
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    # setter for: Lcom/android/internal/telephony/uicc/SIMRecords;->mEfRat:[B
    invoke-static {v5, v8}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$1002(Lcom/android/internal/telephony/uicc/SIMRecords;[B)[B

    .line 3186
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v5, v5, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 3188
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v5, v5, Lcom/android/internal/telephony/uicc/SIMRecords;->mMiuiAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->reset()V

    .line 3189
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const-string v6, "wipeAllSIMContacts ACTION_SHUTDOWN_IPO"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3190
    :cond_5
    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3191
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIMBroadCastReceiver action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3192
    const-string v5, "gsm.sim.locale.waiting"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3194
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    # invokes: Lcom/android/internal/telephony/uicc/SIMRecords;->setDefaultNameByLocale()V
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$1100(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    goto/16 :goto_0

    .line 3195
    :cond_6
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3196
    const-string v5, "reason"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3197
    .local v1, "reasonExtra":Ljava/lang/String;
    const-string v5, "simId"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 3198
    .local v3, "slot":I
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIM_STATE_CHANGED: slot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",reason = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3199
    const-string v5, "PUK"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3200
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    # getter for: Lcom/android/internal/telephony/uicc/SIMRecords;->mSimId:I
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$500(Lcom/android/internal/telephony/uicc/SIMRecords;)I

    move-result v5

    if-ne v3, v5, :cond_0

    .line 3201
    const/4 v4, 0x0

    .line 3202
    .local v4, "strPuk1Count":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/telephony/uicc/SIMRecords;->SIMRECORD_PROPERTY_RIL_PUK1:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    # getter for: Lcom/android/internal/telephony/uicc/SIMRecords;->mSimId:I
    invoke-static {v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$500(Lcom/android/internal/telephony/uicc/SIMRecords;)I

    move-result v6

    aget-object v5, v5, v6

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3203
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIM_STATE_CHANGED: strPuk1Count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3204
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3205
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v5, v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->setPhbReady(Z)V

    .line 3208
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const-string v6, ""

    iput-object v6, v5, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    .line 3209
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    # invokes: Lcom/android/internal/telephony/uicc/SIMRecords;->setNumberToSimInfo()V
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$1200(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    goto/16 :goto_0
.end method
