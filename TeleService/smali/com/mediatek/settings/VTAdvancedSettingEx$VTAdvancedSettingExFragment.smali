.class public Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;
.super Landroid/preference/PreferenceFragment;
.source "VTAdvancedSettingEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/VTAdvancedSettingEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VTAdvancedSettingExFragment"
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mediatek/settings/VTAdvancedSettingEx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 158
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    .line 160
    const v1, 0x7f050041

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->addPreferencesFromResource(I)V

    .line 162
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    new-instance v2, Lcom/mediatek/settings/PreCheckForRunning;

    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mediatek/settings/PreCheckForRunning;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/mediatek/settings/VTAdvancedSettingEx;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;
    invoke-static {v1, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$202(Lcom/mediatek/settings/VTAdvancedSettingEx;Lcom/mediatek/settings/PreCheckForRunning;)Lcom/mediatek/settings/PreCheckForRunning;

    .line 164
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->get3GSimCards(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/mediatek/settings/VTAdvancedSettingEx;->m3GSimList:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$002(Lcom/mediatek/settings/VTAdvancedSettingEx;Ljava/util/List;)Ljava/util/List;

    .line 166
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    const-string v2, "button_vt_replace_expand_key"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    # setter for: Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTReplace:Landroid/preference/Preference;
    invoke-static {v1, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$302(Lcom/mediatek/settings/VTAdvancedSettingEx;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 168
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    const-string v2, "button_vt_enable_back_camera_key"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    # setter for: Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTEnablebackCamer:Landroid/preference/Preference;
    invoke-static {v1, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$402(Lcom/mediatek/settings/VTAdvancedSettingEx;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 169
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    const-string v2, "button_vt_peer_bigger_key"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    # setter for: Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTPeerBigger:Landroid/preference/Preference;
    invoke-static {v1, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$502(Lcom/mediatek/settings/VTAdvancedSettingEx;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 170
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    const-string v2, "button_vt_mo_local_video_display_key"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    # setter for: Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTMoVideo:Landroid/preference/Preference;
    invoke-static {v1, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$602(Lcom/mediatek/settings/VTAdvancedSettingEx;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 171
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    const-string v2, "button_vt_mt_local_video_display_key"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    # setter for: Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTMtVideo:Landroid/preference/Preference;
    invoke-static {v1, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$702(Lcom/mediatek/settings/VTAdvancedSettingEx;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 173
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    const-string v2, "button_more_expand_key"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    # setter for: Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonCallAdditional:Landroid/preference/Preference;
    invoke-static {v1, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$802(Lcom/mediatek/settings/VTAdvancedSettingEx;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 174
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    const-string v2, "button_cf_expand_key"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    # setter for: Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonCallFwd:Landroid/preference/Preference;
    invoke-static {v1, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$902(Lcom/mediatek/settings/VTAdvancedSettingEx;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 175
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    const-string v2, "button_cb_expand_key"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    # setter for: Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonCallBar:Landroid/preference/Preference;
    invoke-static {v1, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$1002(Lcom/mediatek/settings/VTAdvancedSettingEx;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 177
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    const-string v2, "button_vt_replace_peer_expand_key"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    # setter for: Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTPeerReplace:Landroid/preference/Preference;
    invoke-static {v1, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$1102(Lcom/mediatek/settings/VTAdvancedSettingEx;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 178
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    const-string v2, "button_vt_enable_peer_replace_key"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    # setter for: Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTEnablePeerReplace:Landroid/preference/Preference;
    invoke-static {v1, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$1202(Lcom/mediatek/settings/VTAdvancedSettingEx;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 179
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    const-string v2, "button_vt_auto_dropback_key"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    # setter for: Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTAutoDropBack:Landroid/preference/Preference;
    invoke-static {v1, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$1302(Lcom/mediatek/settings/VTAdvancedSettingEx;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 180
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    const-string v2, "ring_only_once"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    # setter for: Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonRingOnlyOnce:Landroid/preference/Preference;
    invoke-static {v1, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$1402(Lcom/mediatek/settings/VTAdvancedSettingEx;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 181
    const-string v1, "MyLog"

    const-string v2, "FeatureOption.MTK_VT3G324M_SUPPORT=falseFeatureOption.MTK_PHONE_VT_VOICE_ANSWER=false"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    # getter for: Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonRingOnlyOnce:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$1400(Lcom/mediatek/settings/VTAdvancedSettingEx;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 187
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    # setter for: Lcom/mediatek/settings/VTAdvancedSettingEx;->mIntentFilter:Landroid/content/IntentFilter;
    invoke-static {v1, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$1502(Lcom/mediatek/settings/VTAdvancedSettingEx;Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    .line 188
    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    # getter for: Lcom/mediatek/settings/VTAdvancedSettingEx;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$1600(Lcom/mediatek/settings/VTAdvancedSettingEx;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    # getter for: Lcom/mediatek/settings/VTAdvancedSettingEx;->mIntentFilter:Landroid/content/IntentFilter;
    invoke-static {v1}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$1500(Lcom/mediatek/settings/VTAdvancedSettingEx;)Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 191
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 193
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 195
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 199
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/mediatek/settings/MultipleSimActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "INIT_FEATURE_NAME"

    const-string v2, "VT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const-string v1, "EXTRA_TITME_NAME"

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    const-string v1, "EXTRA_3G_CARD_ONLY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 203
    const-string v1, "INIT_BASE_KEY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    # getter for: Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTReplace:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$300(Lcom/mediatek/settings/VTAdvancedSettingEx;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_2

    .line 206
    const-string v1, "LIST_TITLE_NAME"

    const v2, 0x7f0b00d1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    const-string v1, "INIT_ARRAY"

    const v2, 0x7f060029

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    const-string v2, "button_vt_replace_expand_key"

    # invokes: Lcom/mediatek/settings/VTAdvancedSettingEx;->getKeyValue(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$1700(Lcom/mediatek/settings/VTAdvancedSettingEx;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    const-string v2, "button_vt_replace_expand_key"

    const-string v3, "0"

    # invokes: Lcom/mediatek/settings/VTAdvancedSettingEx;->setKeyValue(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$1800(Lcom/mediatek/settings/VTAdvancedSettingEx;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_0
    const-string v1, "ITEM_TYPE"

    const-string v2, "ListPreference"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v1, "INIT_ARRAY_VALUE"

    const v2, 0x7f06002b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    # setter for: Lcom/mediatek/settings/VTAdvancedSettingEx;->mTargetPreference:Landroid/preference/Preference;
    invoke-static {v1, p2}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$1902(Lcom/mediatek/settings/VTAdvancedSettingEx;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 239
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx;->startActivityForResult(Landroid/content/Intent;I)V

    .line 240
    return v4

    .line 213
    :cond_2
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    # getter for: Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTMtVideo:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$700(Lcom/mediatek/settings/VTAdvancedSettingEx;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_4

    .line 214
    const-string v1, "LIST_TITLE_NAME"

    const v2, 0x7f0b0027

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    const-string v1, "INIT_ARRAY"

    const v2, 0x7f06002d

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    const-string v2, "button_vt_mt_local_video_display_key"

    # invokes: Lcom/mediatek/settings/VTAdvancedSettingEx;->getKeyValue(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$1700(Lcom/mediatek/settings/VTAdvancedSettingEx;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 217
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    const-string v2, "button_vt_mt_local_video_display_key"

    const-string v3, "0"

    # invokes: Lcom/mediatek/settings/VTAdvancedSettingEx;->setKeyValue(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$1800(Lcom/mediatek/settings/VTAdvancedSettingEx;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_3
    const-string v1, "INIT_ARRAY_VALUE"

    const v2, 0x7f06002e

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    const-string v1, "ITEM_TYPE"

    const-string v2, "ListPreference"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 221
    :cond_4
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    # getter for: Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTPeerReplace:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$1100(Lcom/mediatek/settings/VTAdvancedSettingEx;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_6

    .line 222
    const-string v1, "LIST_TITLE_NAME"

    const v2, 0x7f0b0050

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    const-string v1, "INIT_ARRAY"

    const v2, 0x7f06002a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    const-string v2, "button_vt_replace_peer_expand_key"

    # invokes: Lcom/mediatek/settings/VTAdvancedSettingEx;->getKeyValue(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$1700(Lcom/mediatek/settings/VTAdvancedSettingEx;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    .line 225
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    const-string v2, "button_vt_replace_peer_expand_key"

    const-string v3, "0"

    # invokes: Lcom/mediatek/settings/VTAdvancedSettingEx;->setKeyValue(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$1800(Lcom/mediatek/settings/VTAdvancedSettingEx;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_5
    const-string v1, "INIT_ARRAY_VALUE"

    const v2, 0x7f06002c

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    const-string v1, "ITEM_TYPE"

    const-string v2, "ListPreference"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 229
    :cond_6
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    # getter for: Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTEnablebackCamer:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$400(Lcom/mediatek/settings/VTAdvancedSettingEx;)Landroid/preference/Preference;

    move-result-object v1

    if-eq p2, v1, :cond_7

    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    # getter for: Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTPeerBigger:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$500(Lcom/mediatek/settings/VTAdvancedSettingEx;)Landroid/preference/Preference;

    move-result-object v1

    if-eq p2, v1, :cond_7

    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    # getter for: Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTMoVideo:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$600(Lcom/mediatek/settings/VTAdvancedSettingEx;)Landroid/preference/Preference;

    move-result-object v1

    if-eq p2, v1, :cond_7

    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    # getter for: Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTEnablePeerReplace:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$1200(Lcom/mediatek/settings/VTAdvancedSettingEx;)Landroid/preference/Preference;

    move-result-object v1

    if-eq p2, v1, :cond_7

    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    # getter for: Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTAutoDropBack:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$1300(Lcom/mediatek/settings/VTAdvancedSettingEx;)Landroid/preference/Preference;

    move-result-object v1

    if-eq p2, v1, :cond_7

    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    # getter for: Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonRingOnlyOnce:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$1400(Lcom/mediatek/settings/VTAdvancedSettingEx;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_1

    .line 235
    :cond_7
    const-string v1, "ITEM_TYPE"

    const-string v2, "CheckBoxPreference"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0
.end method
