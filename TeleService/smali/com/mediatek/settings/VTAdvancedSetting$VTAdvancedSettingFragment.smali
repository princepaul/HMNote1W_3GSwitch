.class public Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;
.super Landroid/preference/PreferenceFragment;
.source "VTAdvancedSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/VTAdvancedSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VTAdvancedSettingFragment"
.end annotation


# instance fields
.field instanceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mediatek/settings/VTAdvancedSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 186
    const v2, 0x7f050040

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->addPreferencesFromResource(I)V

    .line 187
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/VTAdvancedSetting;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    .line 188
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/VTAdvancedSetting;

    new-instance v3, Lcom/mediatek/settings/PreCheckForRunning;

    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/mediatek/settings/PreCheckForRunning;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/mediatek/settings/VTAdvancedSetting;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;
    invoke-static {v2, v3}, Lcom/mediatek/settings/VTAdvancedSetting;->access$102(Lcom/mediatek/settings/VTAdvancedSetting;Lcom/mediatek/settings/PreCheckForRunning;)Lcom/mediatek/settings/PreCheckForRunning;

    .line 189
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/VTAdvancedSetting;

    const-string v3, "button_vt_replace_expand_key"

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    # setter for: Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTReplace:Landroid/preference/ListPreference;
    invoke-static {v2, v3}, Lcom/mediatek/settings/VTAdvancedSetting;->access$202(Lcom/mediatek/settings/VTAdvancedSetting;Landroid/preference/ListPreference;)Landroid/preference/ListPreference;

    .line 190
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/VTAdvancedSetting;

    # getter for: Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTReplace:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/mediatek/settings/VTAdvancedSetting;->access$200(Lcom/mediatek/settings/VTAdvancedSetting;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 191
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/VTAdvancedSetting;

    const-string v3, "button_vt_replace_peer_expand_key"

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    # setter for: Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerReplace:Landroid/preference/ListPreference;
    invoke-static {v2, v3}, Lcom/mediatek/settings/VTAdvancedSetting;->access$302(Lcom/mediatek/settings/VTAdvancedSetting;Landroid/preference/ListPreference;)Landroid/preference/ListPreference;

    .line 192
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/VTAdvancedSetting;

    # getter for: Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerReplace:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/mediatek/settings/VTAdvancedSetting;->access$300(Lcom/mediatek/settings/VTAdvancedSetting;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 193
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/VTAdvancedSetting;

    const-string v3, "button_cf_expand_key"

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    # setter for: Lcom/mediatek/settings/VTAdvancedSetting;->mButtonCf:Landroid/preference/Preference;
    invoke-static {v2, v3}, Lcom/mediatek/settings/VTAdvancedSetting;->access$402(Lcom/mediatek/settings/VTAdvancedSetting;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 194
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/VTAdvancedSetting;

    const-string v3, "button_cb_expand_key"

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    # setter for: Lcom/mediatek/settings/VTAdvancedSetting;->mButtonCb:Landroid/preference/Preference;
    invoke-static {v2, v3}, Lcom/mediatek/settings/VTAdvancedSetting;->access$502(Lcom/mediatek/settings/VTAdvancedSetting;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 195
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/VTAdvancedSetting;

    const-string v3, "button_more_expand_key"

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    # setter for: Lcom/mediatek/settings/VTAdvancedSetting;->mButtonMore:Landroid/preference/Preference;
    invoke-static {v2, v3}, Lcom/mediatek/settings/VTAdvancedSetting;->access$602(Lcom/mediatek/settings/VTAdvancedSetting;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 196
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/VTAdvancedSetting;

    const-string v3, "button_vt_enable_peer_replace_key"

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    # setter for: Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablePeerReplace:Landroid/preference/CheckBoxPreference;
    invoke-static {v2, v3}, Lcom/mediatek/settings/VTAdvancedSetting;->access$702(Lcom/mediatek/settings/VTAdvancedSetting;Landroid/preference/CheckBoxPreference;)Landroid/preference/CheckBoxPreference;

    .line 197
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/VTAdvancedSetting;

    # getter for: Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablePeerReplace:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/mediatek/settings/VTAdvancedSetting;->access$700(Lcom/mediatek/settings/VTAdvancedSetting;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 198
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/VTAdvancedSetting;

    const-string v3, "button_vt_mo_local_video_display_key"

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    # setter for: Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMoVideo:Landroid/preference/CheckBoxPreference;
    invoke-static {v2, v3}, Lcom/mediatek/settings/VTAdvancedSetting;->access$802(Lcom/mediatek/settings/VTAdvancedSetting;Landroid/preference/CheckBoxPreference;)Landroid/preference/CheckBoxPreference;

    .line 199
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/VTAdvancedSetting;

    # getter for: Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMoVideo:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/mediatek/settings/VTAdvancedSetting;->access$800(Lcom/mediatek/settings/VTAdvancedSetting;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 200
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/VTAdvancedSetting;

    const-string v3, "button_vt_mt_local_video_display_key"

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    # setter for: Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMtVideo:Landroid/preference/ListPreference;
    invoke-static {v2, v3}, Lcom/mediatek/settings/VTAdvancedSetting;->access$902(Lcom/mediatek/settings/VTAdvancedSetting;Landroid/preference/ListPreference;)Landroid/preference/ListPreference;

    .line 201
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/VTAdvancedSetting;

    # getter for: Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMtVideo:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/mediatek/settings/VTAdvancedSetting;->access$900(Lcom/mediatek/settings/VTAdvancedSetting;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 202
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/VTAdvancedSetting;

    const-string v3, "button_vt_enable_back_camera_key"

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    # setter for: Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablebackCamer:Landroid/preference/CheckBoxPreference;
    invoke-static {v2, v3}, Lcom/mediatek/settings/VTAdvancedSetting;->access$1002(Lcom/mediatek/settings/VTAdvancedSetting;Landroid/preference/CheckBoxPreference;)Landroid/preference/CheckBoxPreference;

    .line 203
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/VTAdvancedSetting;

    # getter for: Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablebackCamer:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/mediatek/settings/VTAdvancedSetting;->access$1000(Lcom/mediatek/settings/VTAdvancedSetting;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 204
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/VTAdvancedSetting;

    const-string v3, "button_vt_peer_bigger_key"

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    # setter for: Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerBigger:Landroid/preference/CheckBoxPreference;
    invoke-static {v2, v3}, Lcom/mediatek/settings/VTAdvancedSetting;->access$1102(Lcom/mediatek/settings/VTAdvancedSetting;Landroid/preference/CheckBoxPreference;)Landroid/preference/CheckBoxPreference;

    .line 205
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/VTAdvancedSetting;

    # getter for: Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerBigger:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/mediatek/settings/VTAdvancedSetting;->access$1100(Lcom/mediatek/settings/VTAdvancedSetting;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 206
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/VTAdvancedSetting;

    const-string v3, "button_vt_auto_dropback_key"

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    # setter for: Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTAutoDropBack:Landroid/preference/CheckBoxPreference;
    invoke-static {v2, v3}, Lcom/mediatek/settings/VTAdvancedSetting;->access$1202(Lcom/mediatek/settings/VTAdvancedSetting;Landroid/preference/CheckBoxPreference;)Landroid/preference/CheckBoxPreference;

    .line 207
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/VTAdvancedSetting;

    # getter for: Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTAutoDropBack:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/mediatek/settings/VTAdvancedSetting;->access$1200(Lcom/mediatek/settings/VTAdvancedSetting;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 208
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/VTAdvancedSetting;

    const-string v3, "ring_only_once"

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    # setter for: Lcom/mediatek/settings/VTAdvancedSetting;->mCheckBoxRingOnlyOnce:Landroid/preference/CheckBoxPreference;
    invoke-static {v2, v3}, Lcom/mediatek/settings/VTAdvancedSetting;->access$1302(Lcom/mediatek/settings/VTAdvancedSetting;Landroid/preference/CheckBoxPreference;)Landroid/preference/CheckBoxPreference;

    .line 210
    const-string v2, "Settings/VTAdvancedSetting"

    const-string v3, "FeatureOption.MTK_VT3G324M_SUPPORT=falseFeatureOption.MTK_PHONE_VT_VOICE_ANSWER=false"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/VTAdvancedSetting;

    # getter for: Lcom/mediatek/settings/VTAdvancedSetting;->mCheckBoxRingOnlyOnce:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/mediatek/settings/VTAdvancedSetting;->access$1300(Lcom/mediatek/settings/VTAdvancedSetting;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 218
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/VTAdvancedSetting;

    # invokes: Lcom/mediatek/settings/VTAdvancedSetting;->findSimId()V
    invoke-static {v2}, Lcom/mediatek/settings/VTAdvancedSetting;->access$1400(Lcom/mediatek/settings/VTAdvancedSetting;)V

    .line 219
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/VTAdvancedSetting;

    # invokes: Lcom/mediatek/settings/VTAdvancedSetting;->initVTSettings()V
    invoke-static {v2}, Lcom/mediatek/settings/VTAdvancedSetting;->access$1500(Lcom/mediatek/settings/VTAdvancedSetting;)V

    .line 221
    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 222
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 224
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 226
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 227
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/VTAdvancedSetting;

    # getter for: Lcom/mediatek/settings/VTAdvancedSetting;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/mediatek/settings/VTAdvancedSetting;->access$1600(Lcom/mediatek/settings/VTAdvancedSetting;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 230
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 246
    const-string v1, "Settings/VTAdvancedSetting"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mSlotId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/VTAdvancedSetting;

    # getter for: Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I
    invoke-static {v0}, Lcom/mediatek/settings/VTAdvancedSetting;->access$1700(Lcom/mediatek/settings/VTAdvancedSetting;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string v0, "Settings/VTAdvancedSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[objValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v0, "Settings/VTAdvancedSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/VTAdvancedSetting;

    # getter for: Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTReplace:Landroid/preference/ListPreference;
    invoke-static {v0}, Lcom/mediatek/settings/VTAdvancedSetting;->access$200(Lcom/mediatek/settings/VTAdvancedSetting;)Landroid/preference/ListPreference;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/VTAdvancedSetting;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/settings/VTAdvancedSetting;->mWhichToSave:I
    invoke-static {v0, v1}, Lcom/mediatek/settings/VTAdvancedSetting;->access$1802(Lcom/mediatek/settings/VTAdvancedSetting;I)I

    .line 252
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    const-string v0, " Picture for replacing local video -- selected DEFAULT PICTURE"

    # invokes: Lcom/mediatek/settings/VTAdvancedSetting;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/settings/VTAdvancedSetting;->access$1900(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/VTAdvancedSetting;

    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathDefault()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/settings/VTAdvancedSetting;->showDialogDefaultPic(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/settings/VTAdvancedSetting;->access$2000(Lcom/mediatek/settings/VTAdvancedSetting;Ljava/lang/String;)V

    .line 277
    :cond_0
    :goto_0
    return v3

    .line 257
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    const-string v0, " Picture for replacing local video -- selected MY PICTURE"

    # invokes: Lcom/mediatek/settings/VTAdvancedSetting;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/settings/VTAdvancedSetting;->access$1900(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/VTAdvancedSetting;

    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSetting;

    # getter for: Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I
    invoke-static {v1}, Lcom/mediatek/settings/VTAdvancedSetting;->access$1700(Lcom/mediatek/settings/VTAdvancedSetting;)I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/settings/VTAdvancedSetting;->showDialogMyPic(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/settings/VTAdvancedSetting;->access$2100(Lcom/mediatek/settings/VTAdvancedSetting;Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/VTAdvancedSetting;

    # getter for: Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerReplace:Landroid/preference/ListPreference;
    invoke-static {v0}, Lcom/mediatek/settings/VTAdvancedSetting;->access$300(Lcom/mediatek/settings/VTAdvancedSetting;)Landroid/preference/ListPreference;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/VTAdvancedSetting;

    # setter for: Lcom/mediatek/settings/VTAdvancedSetting;->mWhichToSave:I
    invoke-static {v0, v3}, Lcom/mediatek/settings/VTAdvancedSetting;->access$1802(Lcom/mediatek/settings/VTAdvancedSetting;I)I

    .line 265
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 267
    const-string v0, " Picture for replacing peer video -- selected DEFAULT PICTURE"

    # invokes: Lcom/mediatek/settings/VTAdvancedSetting;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/settings/VTAdvancedSetting;->access$1900(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/VTAdvancedSetting;

    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathDefault2()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/settings/VTAdvancedSetting;->showDialogDefaultPic(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/settings/VTAdvancedSetting;->access$2000(Lcom/mediatek/settings/VTAdvancedSetting;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const-string v0, " Picture for replacing peer video -- selected MY PICTURE"

    # invokes: Lcom/mediatek/settings/VTAdvancedSetting;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/settings/VTAdvancedSetting;->access$1900(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/VTAdvancedSetting;

    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSetting;

    # getter for: Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I
    invoke-static {v1}, Lcom/mediatek/settings/VTAdvancedSetting;->access$1700(Lcom/mediatek/settings/VTAdvancedSetting;)I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect2(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/settings/VTAdvancedSetting;->showDialogMyPic(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/settings/VTAdvancedSetting;->access$2100(Lcom/mediatek/settings/VTAdvancedSetting;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 233
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSetting;

    # getter for: Lcom/mediatek/settings/VTAdvancedSetting;->mButtonCf:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/mediatek/settings/VTAdvancedSetting;->access$400(Lcom/mediatek/settings/VTAdvancedSetting;)Landroid/preference/Preference;

    move-result-object v1

    if-eq v1, p2, :cond_0

    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSetting;

    # getter for: Lcom/mediatek/settings/VTAdvancedSetting;->mButtonCb:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/mediatek/settings/VTAdvancedSetting;->access$500(Lcom/mediatek/settings/VTAdvancedSetting;)Landroid/preference/Preference;

    move-result-object v1

    if-eq v1, p2, :cond_0

    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSetting;

    # getter for: Lcom/mediatek/settings/VTAdvancedSetting;->mButtonMore:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/mediatek/settings/VTAdvancedSetting;->access$600(Lcom/mediatek/settings/VTAdvancedSetting;)Landroid/preference/Preference;

    move-result-object v1

    if-ne v1, p2, :cond_2

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSetting;

    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x1030079

    invoke-static {v3, v4, v5}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlotId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I
    invoke-static {v1, v3}, Lcom/mediatek/settings/VTAdvancedSetting;->access$1702(Lcom/mediatek/settings/VTAdvancedSetting;I)I

    .line 235
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSetting;

    # getter for: Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I
    invoke-static {v1}, Lcom/mediatek/settings/VTAdvancedSetting;->access$1700(Lcom/mediatek/settings/VTAdvancedSetting;)I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 237
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ISVT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 238
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSetting;

    # getter for: Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I
    invoke-static {v1}, Lcom/mediatek/settings/VTAdvancedSetting;->access$1700(Lcom/mediatek/settings/VTAdvancedSetting;)I

    move-result v3

    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VTAdvancedSetting;

    # getter for: Lcom/mediatek/settings/VTAdvancedSetting;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;
    invoke-static {v1}, Lcom/mediatek/settings/VTAdvancedSetting;->access$100(Lcom/mediatek/settings/VTAdvancedSetting;)Lcom/mediatek/settings/PreCheckForRunning;

    move-result-object v1

    invoke-static {v3, p2, v1}, Lcom/mediatek/phone/gemini/GeminiUtils;->startActivity(ILandroid/preference/Preference;Lcom/mediatek/settings/PreCheckForRunning;)V

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    move v1, v2

    .line 242
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
