.class public Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;
.super Landroid/preference/PreferenceFragment;
.source "NetworkEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/NetworkEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkEditorFragment"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/NetworkEditor;


# direct methods
.method public constructor <init>(Lcom/mediatek/settings/NetworkEditor;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;->this$0:Lcom/mediatek/settings/NetworkEditor;

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 167
    const v1, 0x7f050028

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;->addPreferencesFromResource(I)V

    .line 168
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;->this$0:Lcom/mediatek/settings/NetworkEditor;

    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b04a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/mediatek/settings/NetworkEditor;->mNotSet:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkEditor;->access$802(Lcom/mediatek/settings/NetworkEditor;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;->this$0:Lcom/mediatek/settings/NetworkEditor;

    const-string v2, "network_id_key"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    # setter for: Lcom/mediatek/settings/NetworkEditor;->mNetworkId:Landroid/preference/Preference;
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkEditor;->access$702(Lcom/mediatek/settings/NetworkEditor;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 171
    iget-object v2, p0, Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;->this$0:Lcom/mediatek/settings/NetworkEditor;

    const-string v1, "priority_key"

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    # setter for: Lcom/mediatek/settings/NetworkEditor;->mPriority:Landroid/preference/EditTextPreference;
    invoke-static {v2, v1}, Lcom/mediatek/settings/NetworkEditor;->access$902(Lcom/mediatek/settings/NetworkEditor;Landroid/preference/EditTextPreference;)Landroid/preference/EditTextPreference;

    .line 172
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;->this$0:Lcom/mediatek/settings/NetworkEditor;

    const-string v2, "key_network_type"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    # setter for: Lcom/mediatek/settings/NetworkEditor;->mNetworkMode:Landroid/preference/Preference;
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkEditor;->access$1002(Lcom/mediatek/settings/NetworkEditor;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 173
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;->this$0:Lcom/mediatek/settings/NetworkEditor;

    # getter for: Lcom/mediatek/settings/NetworkEditor;->mPriority:Landroid/preference/EditTextPreference;
    invoke-static {v1}, Lcom/mediatek/settings/NetworkEditor;->access$900(Lcom/mediatek/settings/NetworkEditor;)Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 174
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;->this$0:Lcom/mediatek/settings/NetworkEditor;

    # getter for: Lcom/mediatek/settings/NetworkEditor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v1}, Lcom/mediatek/settings/NetworkEditor;->access$1100(Lcom/mediatek/settings/NetworkEditor;)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    const/16 v2, 0x20

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/mediatek/phone/wrapper/TelephonyManagerWrapper;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 177
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;->this$0:Lcom/mediatek/settings/NetworkEditor;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    # setter for: Lcom/mediatek/settings/NetworkEditor;->mIntentFilter:Landroid/content/IntentFilter;
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkEditor;->access$1202(Lcom/mediatek/settings/NetworkEditor;Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    .line 179
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;->this$0:Lcom/mediatek/settings/NetworkEditor;

    # getter for: Lcom/mediatek/settings/NetworkEditor;->mIntentFilter:Landroid/content/IntentFilter;
    invoke-static {v1}, Lcom/mediatek/settings/NetworkEditor;->access$1200(Lcom/mediatek/settings/NetworkEditor;)Landroid/content/IntentFilter;

    move-result-object v1

    const-string v2, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;->this$0:Lcom/mediatek/settings/NetworkEditor;

    # getter for: Lcom/mediatek/settings/NetworkEditor;->mIntentFilter:Landroid/content/IntentFilter;
    invoke-static {v1}, Lcom/mediatek/settings/NetworkEditor;->access$1200(Lcom/mediatek/settings/NetworkEditor;)Landroid/content/IntentFilter;

    move-result-object v1

    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;->this$0:Lcom/mediatek/settings/NetworkEditor;

    new-instance v2, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    iget-object v3, p0, Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;->this$0:Lcom/mediatek/settings/NetworkEditor;

    invoke-direct {v2, v3}, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;-><init>(Lcom/mediatek/settings/NetworkEditor;)V

    # setter for: Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkEditor;->access$602(Lcom/mediatek/settings/NetworkEditor;Lcom/mediatek/settings/NetworkEditor$NetworkInfo;)Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    .line 184
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;->this$0:Lcom/mediatek/settings/NetworkEditor;

    # getter for: Lcom/mediatek/settings/NetworkEditor;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/mediatek/settings/NetworkEditor;->access$1300(Lcom/mediatek/settings/NetworkEditor;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;->this$0:Lcom/mediatek/settings/NetworkEditor;

    # getter for: Lcom/mediatek/settings/NetworkEditor;->mIntentFilter:Landroid/content/IntentFilter;
    invoke-static {v3}, Lcom/mediatek/settings/NetworkEditor;->access$1200(Lcom/mediatek/settings/NetworkEditor;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 186
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 189
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 191
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 194
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "value":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;->this$0:Lcom/mediatek/settings/NetworkEditor;

    # getter for: Lcom/mediatek/settings/NetworkEditor;->mPriority:Landroid/preference/EditTextPreference;
    invoke-static {v3}, Lcom/mediatek/settings/NetworkEditor;->access$900(Lcom/mediatek/settings/NetworkEditor;)Landroid/preference/EditTextPreference;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 196
    const/4 v1, 0x0

    .line 198
    .local v1, "priority":I
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;->this$0:Lcom/mediatek/settings/NetworkEditor;

    # getter for: Lcom/mediatek/settings/NetworkEditor;->mPriority:Landroid/preference/EditTextPreference;
    invoke-static {v3}, Lcom/mediatek/settings/NetworkEditor;->access$900(Lcom/mediatek/settings/NetworkEditor;)Landroid/preference/EditTextPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 202
    :goto_0
    iget-object v3, p0, Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;->this$0:Lcom/mediatek/settings/NetworkEditor;

    # getter for: Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;
    invoke-static {v3}, Lcom/mediatek/settings/NetworkEditor;->access$600(Lcom/mediatek/settings/NetworkEditor;)Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->setPriority(I)V

    .line 203
    iget-object v3, p0, Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;->this$0:Lcom/mediatek/settings/NetworkEditor;

    # getter for: Lcom/mediatek/settings/NetworkEditor;->mPriority:Landroid/preference/EditTextPreference;
    invoke-static {v3}, Lcom/mediatek/settings/NetworkEditor;->access$900(Lcom/mediatek/settings/NetworkEditor;)Landroid/preference/EditTextPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;->this$0:Lcom/mediatek/settings/NetworkEditor;

    # invokes: Lcom/mediatek/settings/NetworkEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/mediatek/settings/NetworkEditor;->access$500(Lcom/mediatek/settings/NetworkEditor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 205
    .end local v1    # "priority":I
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 199
    .restart local v1    # "priority":I
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "Settings/NetworkEditor"

    const-string v4, "onPreferenceChange new value for priority error"

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x0

    .line 210
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;->this$0:Lcom/mediatek/settings/NetworkEditor;

    # getter for: Lcom/mediatek/settings/NetworkEditor;->mNetworkId:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/mediatek/settings/NetworkEditor;->access$700(Lcom/mediatek/settings/NetworkEditor;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_1

    .line 211
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->removeDialog(I)V

    .line 212
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 213
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;->this$0:Lcom/mediatek/settings/NetworkEditor;

    invoke-virtual {v1}, Lcom/mediatek/settings/NetworkEditor;->validate()V

    .line 219
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    :goto_0
    return v1

    .line 214
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;->this$0:Lcom/mediatek/settings/NetworkEditor;

    # getter for: Lcom/mediatek/settings/NetworkEditor;->mNetworkMode:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/mediatek/settings/NetworkEditor;->access$1000(Lcom/mediatek/settings/NetworkEditor;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;->this$0:Lcom/mediatek/settings/NetworkEditor;

    # invokes: Lcom/mediatek/settings/NetworkEditor;->createNetworkTypeIntent(Landroid/preference/Preference;)Landroid/content/Intent;
    invoke-static {v1, p2}, Lcom/mediatek/settings/NetworkEditor;->access$1400(Lcom/mediatek/settings/NetworkEditor;Landroid/preference/Preference;)Landroid/content/Intent;

    move-result-object v0

    .line 216
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 217
    const/4 v1, 0x1

    goto :goto_0
.end method
