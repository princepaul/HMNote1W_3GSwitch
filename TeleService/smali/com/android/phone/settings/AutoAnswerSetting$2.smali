.class Lcom/android/phone/settings/AutoAnswerSetting$2;
.super Ljava/lang/Object;
.source "AutoAnswerSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/AutoAnswerSetting;->createScenarios()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/AutoAnswerSetting;

.field final synthetic val$scenarioStrings:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/AutoAnswerSetting;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/phone/settings/AutoAnswerSetting$2;->this$0:Lcom/android/phone/settings/AutoAnswerSetting;

    iput-object p2, p0, Lcom/android/phone/settings/AutoAnswerSetting$2;->val$scenarioStrings:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 70
    move-object v2, p1

    check-cast v2, Lmiui/preference/RadioButtonPreference;

    .line 71
    .local v2, "pref":Lmiui/preference/RadioButtonPreference;
    invoke-virtual {v2}, Lmiui/preference/RadioButtonPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    iget-object v3, p0, Lcom/android/phone/settings/AutoAnswerSetting$2;->val$scenarioStrings:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lmiui/preference/RadioButtonPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 73
    .local v1, "index":I
    iget-object v3, p0, Lcom/android/phone/settings/AutoAnswerSetting$2;->this$0:Lcom/android/phone/settings/AutoAnswerSetting;

    invoke-virtual {v3}, Lcom/android/phone/settings/AutoAnswerSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 74
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "button_auto_answer_scenario"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 77
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "index":I
    :cond_0
    const/4 v3, 0x0

    return v3
.end method
