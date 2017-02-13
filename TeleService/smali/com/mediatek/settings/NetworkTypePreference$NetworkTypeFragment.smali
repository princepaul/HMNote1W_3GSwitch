.class public Lcom/mediatek/settings/NetworkTypePreference$NetworkTypeFragment;
.super Landroid/preference/PreferenceFragment;
.source "NetworkTypePreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/NetworkTypePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkTypeFragment"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/NetworkTypePreference;


# direct methods
.method public constructor <init>(Lcom/mediatek/settings/NetworkTypePreference;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/mediatek/settings/NetworkTypePreference$NetworkTypeFragment;->this$0:Lcom/mediatek/settings/NetworkTypePreference;

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v2, 0x7f050026

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/NetworkTypePreference$NetworkTypeFragment;->addPreferencesFromResource(I)V

    .line 86
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkTypePreference$NetworkTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 87
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 88
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 90
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    const-string v2, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkTypePreference$NetworkTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/NetworkTypePreference$NetworkTypeFragment;->this$0:Lcom/mediatek/settings/NetworkTypePreference;

    # getter for: Lcom/mediatek/settings/NetworkTypePreference;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/mediatek/settings/NetworkTypePreference;->access$400(Lcom/mediatek/settings/NetworkTypePreference;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    iget-object v2, p0, Lcom/mediatek/settings/NetworkTypePreference$NetworkTypeFragment;->this$0:Lcom/mediatek/settings/NetworkTypePreference;

    # invokes: Lcom/mediatek/settings/NetworkTypePreference;->init()V
    invoke-static {v2}, Lcom/mediatek/settings/NetworkTypePreference;->access$500(Lcom/mediatek/settings/NetworkTypePreference;)V

    .line 98
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 103
    const-string v2, "Settings/NetworkTypePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceChange: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/mediatek/settings/NetworkTypePreference$NetworkTypeFragment;->this$0:Lcom/mediatek/settings/NetworkTypePreference;

    # getter for: Lcom/mediatek/settings/NetworkTypePreference;->m2GCheckBoxPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/mediatek/settings/NetworkTypePreference;->access$600(Lcom/mediatek/settings/NetworkTypePreference;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-ne p1, v2, :cond_2

    .line 105
    iget-object v2, p0, Lcom/mediatek/settings/NetworkTypePreference$NetworkTypeFragment;->this$0:Lcom/mediatek/settings/NetworkTypePreference;

    iget-object v3, p0, Lcom/mediatek/settings/NetworkTypePreference$NetworkTypeFragment;->this$0:Lcom/mediatek/settings/NetworkTypePreference;

    # getter for: Lcom/mediatek/settings/NetworkTypePreference;->m2GCheckBoxPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/mediatek/settings/NetworkTypePreference;->access$600(Lcom/mediatek/settings/NetworkTypePreference;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    # setter for: Lcom/mediatek/settings/NetworkTypePreference;->m2GSelected:Z
    invoke-static {v2, v0}, Lcom/mediatek/settings/NetworkTypePreference;->access$702(Lcom/mediatek/settings/NetworkTypePreference;Z)Z

    .line 111
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mediatek/settings/NetworkTypePreference$NetworkTypeFragment;->this$0:Lcom/mediatek/settings/NetworkTypePreference;

    invoke-virtual {v0}, Lcom/mediatek/settings/NetworkTypePreference;->invalidateOptionsMenu()V

    .line 112
    return v1

    .line 106
    :cond_2
    iget-object v2, p0, Lcom/mediatek/settings/NetworkTypePreference$NetworkTypeFragment;->this$0:Lcom/mediatek/settings/NetworkTypePreference;

    # getter for: Lcom/mediatek/settings/NetworkTypePreference;->m3GCheckBoxPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/mediatek/settings/NetworkTypePreference;->access$800(Lcom/mediatek/settings/NetworkTypePreference;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-ne p1, v2, :cond_4

    .line 107
    iget-object v2, p0, Lcom/mediatek/settings/NetworkTypePreference$NetworkTypeFragment;->this$0:Lcom/mediatek/settings/NetworkTypePreference;

    iget-object v3, p0, Lcom/mediatek/settings/NetworkTypePreference$NetworkTypeFragment;->this$0:Lcom/mediatek/settings/NetworkTypePreference;

    # getter for: Lcom/mediatek/settings/NetworkTypePreference;->m3GCheckBoxPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/mediatek/settings/NetworkTypePreference;->access$800(Lcom/mediatek/settings/NetworkTypePreference;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    :cond_3
    # setter for: Lcom/mediatek/settings/NetworkTypePreference;->m3GSelected:Z
    invoke-static {v2, v0}, Lcom/mediatek/settings/NetworkTypePreference;->access$902(Lcom/mediatek/settings/NetworkTypePreference;Z)Z

    goto :goto_0

    .line 108
    :cond_4
    iget-object v2, p0, Lcom/mediatek/settings/NetworkTypePreference$NetworkTypeFragment;->this$0:Lcom/mediatek/settings/NetworkTypePreference;

    # getter for: Lcom/mediatek/settings/NetworkTypePreference;->m4GCheckBoxPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/mediatek/settings/NetworkTypePreference;->access$1000(Lcom/mediatek/settings/NetworkTypePreference;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/mediatek/settings/NetworkTypePreference$NetworkTypeFragment;->this$0:Lcom/mediatek/settings/NetworkTypePreference;

    iget-object v3, p0, Lcom/mediatek/settings/NetworkTypePreference$NetworkTypeFragment;->this$0:Lcom/mediatek/settings/NetworkTypePreference;

    # getter for: Lcom/mediatek/settings/NetworkTypePreference;->m4GCheckBoxPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/mediatek/settings/NetworkTypePreference;->access$1000(Lcom/mediatek/settings/NetworkTypePreference;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_5

    move v0, v1

    :cond_5
    # setter for: Lcom/mediatek/settings/NetworkTypePreference;->m4GSelected:Z
    invoke-static {v2, v0}, Lcom/mediatek/settings/NetworkTypePreference;->access$1102(Lcom/mediatek/settings/NetworkTypePreference;Z)Z

    goto :goto_0
.end method
