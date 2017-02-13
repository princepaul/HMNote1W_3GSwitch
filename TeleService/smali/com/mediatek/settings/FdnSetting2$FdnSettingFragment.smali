.class public Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;
.super Landroid/preference/PreferenceFragment;
.source "FdnSetting2.java"

# interfaces
.implements Lcom/android/phone/settings/EditPinPreference$OnPinEnteredListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/FdnSetting2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FdnSettingFragment"
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mediatek/settings/FdnSetting2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 349
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 354
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 355
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/FdnSetting2;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    .line 356
    const v2, 0x7f050015

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;->addPreferencesFromResource(I)V

    .line 358
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/FdnSetting2;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    # setter for: Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2, v3}, Lcom/mediatek/settings/FdnSetting2;->access$902(Lcom/mediatek/settings/FdnSetting2;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 360
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/FdnSetting2;

    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/phone/ext/ExtensionManager;->getSettingsExtension()Lcom/mediatek/phone/ext/SettingsExtension;

    move-result-object v3

    # setter for: Lcom/mediatek/settings/FdnSetting2;->mExt:Lcom/mediatek/phone/ext/SettingsExtension;
    invoke-static {v2, v3}, Lcom/mediatek/settings/FdnSetting2;->access$1002(Lcom/mediatek/settings/FdnSetting2;Lcom/mediatek/phone/ext/SettingsExtension;)Lcom/mediatek/phone/ext/SettingsExtension;

    .line 363
    invoke-virtual {p0}, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 364
    .local v1, "prefSet":Landroid/preference/PreferenceScreen;
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/FdnSetting2;

    const-string v3, "button_fdn_enable_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/settings/EditPinPreference;

    # setter for: Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/settings/EditPinPreference;
    invoke-static {v2, v3}, Lcom/mediatek/settings/FdnSetting2;->access$502(Lcom/mediatek/settings/FdnSetting2;Lcom/android/phone/settings/EditPinPreference;)Lcom/android/phone/settings/EditPinPreference;

    .line 365
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/FdnSetting2;

    const-string v3, "button_change_pin2_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    # setter for: Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;
    invoke-static {v2, v3}, Lcom/mediatek/settings/FdnSetting2;->access$1102(Lcom/mediatek/settings/FdnSetting2;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 366
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/FdnSetting2;

    const-string v3, "button_fdn_list_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    # setter for: Lcom/mediatek/settings/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;
    invoke-static {v2, v3}, Lcom/mediatek/settings/FdnSetting2;->access$1202(Lcom/mediatek/settings/FdnSetting2;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 368
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/FdnSetting2;

    # getter for: Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/settings/EditPinPreference;
    invoke-static {v2}, Lcom/mediatek/settings/FdnSetting2;->access$500(Lcom/mediatek/settings/FdnSetting2;)Lcom/android/phone/settings/EditPinPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 369
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/FdnSetting2;

    # getter for: Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/settings/EditPinPreference;
    invoke-static {v2}, Lcom/mediatek/settings/FdnSetting2;->access$500(Lcom/mediatek/settings/FdnSetting2;)Lcom/android/phone/settings/EditPinPreference;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/phone/settings/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/settings/EditPinPreference$OnPinEnteredListener;)V

    .line 370
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/FdnSetting2;

    # getter for: Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/settings/EditPinPreference;
    invoke-static {v2}, Lcom/mediatek/settings/FdnSetting2;->access$500(Lcom/mediatek/settings/FdnSetting2;)Lcom/android/phone/settings/EditPinPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/settings/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    new-instance v3, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment$1;

    invoke-direct {v3, p0}, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment$1;-><init>(Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 392
    :cond_0
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/FdnSetting2;

    # getter for: Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/mediatek/settings/FdnSetting2;->access$1100(Lcom/mediatek/settings/FdnSetting2;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 393
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/FdnSetting2;

    # getter for: Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/mediatek/settings/FdnSetting2;->access$1100(Lcom/mediatek/settings/FdnSetting2;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 395
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/FdnSetting2;

    # getter for: Lcom/mediatek/settings/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/mediatek/settings/FdnSetting2;->access$1200(Lcom/mediatek/settings/FdnSetting2;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 396
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/FdnSetting2;

    # getter for: Lcom/mediatek/settings/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/mediatek/settings/FdnSetting2;->access$1200(Lcom/mediatek/settings/FdnSetting2;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 399
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 400
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_3

    .line 402
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 404
    :cond_3
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/FdnSetting2;

    # invokes: Lcom/mediatek/settings/FdnSetting2;->initSlotId()V
    invoke-static {v2}, Lcom/mediatek/settings/FdnSetting2;->access$1300(Lcom/mediatek/settings/FdnSetting2;)V

    .line 405
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/FdnSetting2;

    # invokes: Lcom/mediatek/settings/FdnSetting2;->initUIState()V
    invoke-static {v2}, Lcom/mediatek/settings/FdnSetting2;->access$1400(Lcom/mediatek/settings/FdnSetting2;)V

    .line 406
    return-void
.end method

.method public onPinEntered(Lcom/android/phone/settings/EditPinPreference;Z)V
    .locals 2
    .param p1, "preference"    # Lcom/android/phone/settings/EditPinPreference;
    .param p2, "positiveResult"    # Z

    .prologue
    .line 438
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/FdnSetting2;

    # getter for: Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/settings/EditPinPreference;
    invoke-static {v0}, Lcom/mediatek/settings/FdnSetting2;->access$500(Lcom/mediatek/settings/FdnSetting2;)Lcom/android/phone/settings/EditPinPreference;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 439
    const-string v0, "Settings/FdnSetting2"

    const-string v1, "onPinEntered"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/FdnSetting2;

    # invokes: Lcom/mediatek/settings/FdnSetting2;->toggleFDNEnable(Z)V
    invoke-static {v0, p2}, Lcom/mediatek/settings/FdnSetting2;->access$1700(Lcom/mediatek/settings/FdnSetting2;Z)V

    .line 442
    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 409
    const-string v1, "Settings/FdnSetting2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceClick"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/phone/PhoneLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/FdnSetting2;

    # getter for: Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/mediatek/settings/FdnSetting2;->access$1100(Lcom/mediatek/settings/FdnSetting2;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 411
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 412
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pin2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 413
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/FdnSetting2;

    # getter for: Lcom/mediatek/settings/FdnSetting2;->mSlotId:I
    invoke-static {v1}, Lcom/mediatek/settings/FdnSetting2;->access$1500(Lcom/mediatek/settings/FdnSetting2;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 414
    const-string v3, "simId"

    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/FdnSetting2;

    # getter for: Lcom/mediatek/settings/FdnSetting2;->mSlotId:I
    invoke-static {v1}, Lcom/mediatek/settings/FdnSetting2;->access$1500(Lcom/mediatek/settings/FdnSetting2;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 416
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcom/android/phone/settings/ChangeIccPinScreen;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 417
    invoke-virtual {p0, v0}, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;->startActivity(Landroid/content/Intent;)V

    .line 420
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/FdnSetting2;

    # getter for: Lcom/mediatek/settings/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/mediatek/settings/FdnSetting2;->access$1200(Lcom/mediatek/settings/FdnSetting2;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p1, v1, :cond_4

    .line 421
    const-string v1, "Settings/FdnSetting2"

    const-string v3, "onPreferenceClick mButtonFDNList"

    invoke-static {v1, v3}, Lcom/mediatek/phone/PhoneLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/FdnSetting2;

    # invokes: Lcom/mediatek/settings/FdnSetting2;->isPhoneBookReady()Z
    invoke-static {v1}, Lcom/mediatek/settings/FdnSetting2;->access$1600(Lcom/mediatek/settings/FdnSetting2;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 423
    const/4 v1, 0x0

    .line 431
    :goto_0
    return v1

    .line 425
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcom/android/phone/settings/FdnList;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 426
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/FdnSetting2;

    # getter for: Lcom/mediatek/settings/FdnSetting2;->mSlotId:I
    invoke-static {v1}, Lcom/mediatek/settings/FdnSetting2;->access$1500(Lcom/mediatek/settings/FdnSetting2;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 427
    const-string v3, "simId"

    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/FdnSetting2;

    # getter for: Lcom/mediatek/settings/FdnSetting2;->mSlotId:I
    invoke-static {v1}, Lcom/mediatek/settings/FdnSetting2;->access$1500(Lcom/mediatek/settings/FdnSetting2;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 429
    :cond_3
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/FdnSetting2;

    invoke-virtual {v1, v0}, Lcom/mediatek/settings/FdnSetting2;->startActivity(Landroid/content/Intent;)V

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    move v1, v2

    .line 431
    goto :goto_0
.end method
