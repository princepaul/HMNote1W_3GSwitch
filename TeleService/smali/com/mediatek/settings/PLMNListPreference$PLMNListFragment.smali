.class public Lcom/mediatek/settings/PLMNListPreference$PLMNListFragment;
.super Lmiui/preference/PreferenceFragment;
.source "PLMNListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/PLMNListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PLMNListFragment"
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mediatek/settings/PLMNListPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Lmiui/preference/PreferenceFragment;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/PLMNListPreference$PLMNListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-super {p0, p1}, Lmiui/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 137
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/mediatek/settings/PLMNListPreference$PLMNListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/PLMNListPreference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/mediatek/settings/PLMNListPreference$PLMNListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    .line 138
    const v1, 0x7f050029

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/PLMNListPreference$PLMNListFragment;->addPreferencesFromResource(I)V

    .line 139
    iget-object v1, p0, Lcom/mediatek/settings/PLMNListPreference$PLMNListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/PLMNListPreference;

    const-string v2, "button_plmn_list_key"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/PLMNListPreference$PLMNListFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    # setter for: Lcom/mediatek/settings/PLMNListPreference;->mPLMNListContainer:Landroid/preference/PreferenceScreen;
    invoke-static {v1, v2}, Lcom/mediatek/settings/PLMNListPreference;->access$502(Lcom/mediatek/settings/PLMNListPreference;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    .line 140
    iget-object v1, p0, Lcom/mediatek/settings/PLMNListPreference$PLMNListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/PLMNListPreference;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    # setter for: Lcom/mediatek/settings/PLMNListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1, v2}, Lcom/mediatek/settings/PLMNListPreference;->access$602(Lcom/mediatek/settings/PLMNListPreference;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 142
    iget-object v1, p0, Lcom/mediatek/settings/PLMNListPreference$PLMNListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/PLMNListPreference;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    # setter for: Lcom/mediatek/settings/PLMNListPreference;->mIntentFilter:Landroid/content/IntentFilter;
    invoke-static {v1, v2}, Lcom/mediatek/settings/PLMNListPreference;->access$702(Lcom/mediatek/settings/PLMNListPreference;Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    .line 144
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/mediatek/settings/PLMNListPreference$PLMNListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/PLMNListPreference;

    # getter for: Lcom/mediatek/settings/PLMNListPreference;->mIntentFilter:Landroid/content/IntentFilter;
    invoke-static {v1}, Lcom/mediatek/settings/PLMNListPreference;->access$700(Lcom/mediatek/settings/PLMNListPreference;)Landroid/content/IntentFilter;

    move-result-object v1

    const-string v2, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/PLMNListPreference$PLMNListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/PLMNListPreference;

    # getter for: Lcom/mediatek/settings/PLMNListPreference;->mIntentFilter:Landroid/content/IntentFilter;
    invoke-static {v1}, Lcom/mediatek/settings/PLMNListPreference;->access$700(Lcom/mediatek/settings/PLMNListPreference;)Landroid/content/IntentFilter;

    move-result-object v1

    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/mediatek/settings/PLMNListPreference$PLMNListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/PLMNListPreference;

    # getter for: Lcom/mediatek/settings/PLMNListPreference;->mIntentFilter:Landroid/content/IntentFilter;
    invoke-static {v1}, Lcom/mediatek/settings/PLMNListPreference;->access$700(Lcom/mediatek/settings/PLMNListPreference;)Landroid/content/IntentFilter;

    move-result-object v1

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/mediatek/settings/PLMNListPreference$PLMNListFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 150
    .local v0, "actionBar":Lmiui/app/ActionBar;
    if-eqz v0, :cond_1

    .line 153
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/PLMNListPreference$PLMNListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/PLMNListPreference;

    # invokes: Lcom/mediatek/settings/PLMNListPreference;->initSlotId()V
    invoke-static {v1}, Lcom/mediatek/settings/PLMNListPreference;->access$800(Lcom/mediatek/settings/PLMNListPreference;)V

    .line 157
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 163
    const-string v4, "Settings/PLMNListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceTreeClick()... preference: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", mListItemClicked: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference$PLMNListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/PLMNListPreference;

    # getter for: Lcom/mediatek/settings/PLMNListPreference;->mListItemClicked:Z
    invoke-static {v2}, Lcom/mediatek/settings/PLMNListPreference;->access$900(Lcom/mediatek/settings/PLMNListPreference;)Z

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference$PLMNListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/PLMNListPreference;

    # getter for: Lcom/mediatek/settings/PLMNListPreference;->mListItemClicked:Z
    invoke-static {v2}, Lcom/mediatek/settings/PLMNListPreference;->access$900(Lcom/mediatek/settings/PLMNListPreference;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 180
    :goto_0
    return v2

    .line 168
    :cond_0
    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference$PLMNListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/PLMNListPreference;

    # setter for: Lcom/mediatek/settings/PLMNListPreference;->mListItemClicked:Z
    invoke-static {v2, v3}, Lcom/mediatek/settings/PLMNListPreference;->access$902(Lcom/mediatek/settings/PLMNListPreference;Z)Z

    .line 170
    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference$PLMNListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/PLMNListPreference;

    # invokes: Lcom/mediatek/settings/PLMNListPreference;->setScreenEnabled()V
    invoke-static {v2}, Lcom/mediatek/settings/PLMNListPreference;->access$100(Lcom/mediatek/settings/PLMNListPreference;)V

    .line 171
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mediatek/settings/PLMNListPreference$PLMNListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v4, Lcom/mediatek/settings/NetworkEditor;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference$PLMNListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/PLMNListPreference;

    # getter for: Lcom/mediatek/settings/PLMNListPreference;->mPreferenceMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/mediatek/settings/PLMNListPreference;->access$1000(Lcom/mediatek/settings/PLMNListPreference;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    .line 174
    .local v0, "info":Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    if-nez v0, :cond_1

    .line 175
    const/4 v2, 0x0

    goto :goto_0

    .line 177
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference$PLMNListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/PLMNListPreference;

    # setter for: Lcom/mediatek/settings/PLMNListPreference;->mOldInfo:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    invoke-static {v2, v0}, Lcom/mediatek/settings/PLMNListPreference;->access$1102(Lcom/mediatek/settings/PLMNListPreference;Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    .line 178
    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference$PLMNListFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/PLMNListPreference;

    # invokes: Lcom/mediatek/settings/PLMNListPreference;->extractInfoFromNetworkInfo(Landroid/content/Intent;Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)V
    invoke-static {v2, v1, v0}, Lcom/mediatek/settings/PLMNListPreference;->access$1200(Lcom/mediatek/settings/PLMNListPreference;Landroid/content/Intent;Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)V

    .line 179
    invoke-virtual {p0}, Lcom/mediatek/settings/PLMNListPreference$PLMNListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v4, 0xc8

    invoke-virtual {v2, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    move v2, v3

    .line 180
    goto :goto_0
.end method
