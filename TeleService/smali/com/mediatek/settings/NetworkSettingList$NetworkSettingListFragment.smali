.class public Lcom/mediatek/settings/NetworkSettingList$NetworkSettingListFragment;
.super Landroid/preference/PreferenceFragment;
.source "NetworkSettingList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/NetworkSettingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkSettingListFragment"
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mediatek/settings/NetworkSettingList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 410
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/NetworkSettingList$NetworkSettingListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 415
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 416
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList$NetworkSettingListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/NetworkSettingList;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/mediatek/settings/NetworkSettingList$NetworkSettingListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    .line 417
    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/NetworkSettingList$NetworkSettingListFragment;->addPreferencesFromResource(I)V

    .line 418
    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList$NetworkSettingListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/NetworkSettingList;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/settings/NetworkSettingList;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 419
    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList$NetworkSettingListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/NetworkSettingList;

    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList$NetworkSettingListFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "list_networks_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    # setter for: Lcom/mediatek/settings/NetworkSettingList;->mNetworkList:Landroid/preference/PreferenceGroup;
    invoke-static {v2, v3}, Lcom/mediatek/settings/NetworkSettingList;->access$1202(Lcom/mediatek/settings/NetworkSettingList;Landroid/preference/PreferenceGroup;)Landroid/preference/PreferenceGroup;

    .line 420
    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList$NetworkSettingListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/NetworkSettingList;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    # setter for: Lcom/mediatek/settings/NetworkSettingList;->mNetworkMap:Ljava/util/HashMap;
    invoke-static {v2, v3}, Lcom/mediatek/settings/NetworkSettingList;->access$1302(Lcom/mediatek/settings/NetworkSettingList;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 422
    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList$NetworkSettingListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/NetworkSettingList;

    invoke-virtual {v2}, Lcom/mediatek/settings/NetworkSettingList;->geminiPhoneInit()V

    .line 424
    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList$NetworkSettingListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/NetworkSettingList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "It\'s a GeminiPhone ? = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SIM_ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/mediatek/settings/NetworkSettingList$NetworkSettingListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/NetworkSettingList;

    # getter for: Lcom/mediatek/settings/NetworkSettingList;->mSlotId:I
    invoke-static {v3}, Lcom/mediatek/settings/NetworkSettingList;->access$400(Lcom/mediatek/settings/NetworkSettingList;)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/settings/NetworkSettingList;->access$100(Lcom/mediatek/settings/NetworkSettingList;Ljava/lang/String;)V

    .line 432
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList$NetworkSettingListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/NetworkQueryService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 433
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "simId"

    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList$NetworkSettingListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/NetworkSettingList;

    # getter for: Lcom/mediatek/settings/NetworkSettingList;->mSlotId:I
    invoke-static {v2}, Lcom/mediatek/settings/NetworkSettingList;->access$400(Lcom/mediatek/settings/NetworkSettingList;)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 435
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList$NetworkSettingListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 436
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList$NetworkSettingListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList$NetworkSettingListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/NetworkSettingList;

    # getter for: Lcom/mediatek/settings/NetworkSettingList;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/mediatek/settings/NetworkSettingList;->access$1400(Lcom/mediatek/settings/NetworkSettingList;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v3, v1, v2, v6}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 438
    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList$NetworkSettingListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/NetworkSettingList;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    # setter for: Lcom/mediatek/settings/NetworkSettingList;->mIntentFilter:Landroid/content/IntentFilter;
    invoke-static {v2, v3}, Lcom/mediatek/settings/NetworkSettingList;->access$1502(Lcom/mediatek/settings/NetworkSettingList;Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    .line 439
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 440
    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList$NetworkSettingListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/NetworkSettingList;

    # getter for: Lcom/mediatek/settings/NetworkSettingList;->mIntentFilter:Landroid/content/IntentFilter;
    invoke-static {v2}, Lcom/mediatek/settings/NetworkSettingList;->access$1500(Lcom/mediatek/settings/NetworkSettingList;)Landroid/content/IntentFilter;

    move-result-object v2

    const-string v3, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 442
    :cond_0
    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList$NetworkSettingListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/NetworkSettingList;

    # getter for: Lcom/mediatek/settings/NetworkSettingList;->mIntentFilter:Landroid/content/IntentFilter;
    invoke-static {v2}, Lcom/mediatek/settings/NetworkSettingList;->access$1500(Lcom/mediatek/settings/NetworkSettingList;)Landroid/content/IntentFilter;

    move-result-object v2

    const-string v3, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 443
    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList$NetworkSettingListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/NetworkSettingList;

    new-instance v4, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList$NetworkSettingListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v3, p0, Lcom/mediatek/settings/NetworkSettingList$NetworkSettingListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/NetworkSettingList;

    # getter for: Lcom/mediatek/settings/NetworkSettingList;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/settings/NetworkSettingList;->access$1100(Lcom/mediatek/settings/NetworkSettingList;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    # setter for: Lcom/mediatek/settings/NetworkSettingList;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    invoke-static {v2, v4}, Lcom/mediatek/settings/NetworkSettingList;->access$1602(Lcom/mediatek/settings/NetworkSettingList;Lcom/android/internal/telephony/PhoneStateIntentReceiver;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 444
    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList$NetworkSettingListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/NetworkSettingList;

    # getter for: Lcom/mediatek/settings/NetworkSettingList;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    invoke-static {v2}, Lcom/mediatek/settings/NetworkSettingList;->access$1600(Lcom/mediatek/settings/NetworkSettingList;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    move-result-object v2

    const/16 v3, 0x190

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 446
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList$NetworkSettingListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 447
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 449
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 451
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 455
    move-object v2, p2

    .line 457
    .local v2, "selectedCarrier":Landroid/preference/Preference;
    invoke-virtual {v2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 459
    .local v1, "networkStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/settings/NetworkSettingList$NetworkSettingListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/settings/NetworkSettingList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "selected network: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/settings/NetworkSettingList;->access$100(Lcom/mediatek/settings/NetworkSettingList;Ljava/lang/String;)V

    .line 462
    iget-object v5, p0, Lcom/mediatek/settings/NetworkSettingList$NetworkSettingListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/settings/NetworkSettingList;

    # getter for: Lcom/mediatek/settings/NetworkSettingList;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/settings/NetworkSettingList;->access$1100(Lcom/mediatek/settings/NetworkSettingList;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0xc8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 465
    .local v0, "msg":Landroid/os/Message;
    const/4 v3, 0x0

    .line 468
    .local v3, "state":I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v4, v5, Lcom/android/phone/PhoneGlobals;->phoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    .line 469
    .local v4, "temPhoneMgrEx":Lcom/mediatek/phone/PhoneInterfaceManagerEx;
    invoke-virtual {v4}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->getActiveModemType()I

    move-result v3

    .line 470
    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    const/4 v3, 0x7

    .line 489
    :cond_0
    iget-object v5, p0, Lcom/mediatek/settings/NetworkSettingList$NetworkSettingListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/settings/NetworkSettingList;

    iget-object v7, v5, Lcom/mediatek/settings/NetworkSettingList;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/mediatek/settings/NetworkSettingList$NetworkSettingListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/settings/NetworkSettingList;

    # getter for: Lcom/mediatek/settings/NetworkSettingList;->mNetworkMap:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/mediatek/settings/NetworkSettingList;->access$1300(Lcom/mediatek/settings/NetworkSettingList;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/OperatorInfo;

    iget-object v6, p0, Lcom/mediatek/settings/NetworkSettingList$NetworkSettingListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/settings/NetworkSettingList;

    # getter for: Lcom/mediatek/settings/NetworkSettingList;->mSlotId:I
    invoke-static {v6}, Lcom/mediatek/settings/NetworkSettingList;->access$400(Lcom/mediatek/settings/NetworkSettingList;)I

    move-result v6

    invoke-static {v7, v5, v0, v6}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->selectNetworkManually(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;I)V

    .line 492
    iget-object v5, p0, Lcom/mediatek/settings/NetworkSettingList$NetworkSettingListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/settings/NetworkSettingList;

    # invokes: Lcom/mediatek/settings/NetworkSettingList;->displayNetworkSeletionInProgress(Ljava/lang/String;)V
    invoke-static {v5, v1}, Lcom/mediatek/settings/NetworkSettingList;->access$1700(Lcom/mediatek/settings/NetworkSettingList;Ljava/lang/String;)V

    .line 493
    const/4 v5, 0x1

    return v5
.end method
