.class Lcom/android/phone/settings/CallRecordSetting$1;
.super Ljava/lang/Object;
.source "CallRecordSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/CallRecordSetting;->createScenarios()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/CallRecordSetting;

.field final synthetic val$scenarioStrings:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/CallRecordSetting;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/phone/settings/CallRecordSetting$1;->this$0:Lcom/android/phone/settings/CallRecordSetting;

    iput-object p2, p0, Lcom/android/phone/settings/CallRecordSetting$1;->val$scenarioStrings:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 104
    move-object v2, p1

    check-cast v2, Lmiui/preference/RadioButtonPreference;

    .line 105
    .local v2, "pref":Lmiui/preference/RadioButtonPreference;
    invoke-virtual {v2}, Lmiui/preference/RadioButtonPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 106
    iget-object v5, p0, Lcom/android/phone/settings/CallRecordSetting$1;->val$scenarioStrings:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2}, Lmiui/preference/RadioButtonPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 107
    .local v1, "index":I
    iget-object v5, p0, Lcom/android/phone/settings/CallRecordSetting$1;->this$0:Lcom/android/phone/settings/CallRecordSetting;

    invoke-virtual {v5}, Lcom/android/phone/settings/CallRecordSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 108
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "button_auto_record_scenario"

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 110
    iget-object v5, p0, Lcom/android/phone/settings/CallRecordSetting$1;->this$0:Lcom/android/phone/settings/CallRecordSetting;

    if-ne v1, v3, :cond_1

    :goto_0
    # invokes: Lcom/android/phone/settings/CallRecordSetting;->updateCustomCategory(Z)V
    invoke-static {v5, v3}, Lcom/android/phone/settings/CallRecordSetting;->access$000(Lcom/android/phone/settings/CallRecordSetting;Z)V

    .line 112
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "index":I
    :cond_0
    return v4

    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "index":I
    :cond_1
    move v3, v4

    .line 110
    goto :goto_0
.end method
