.class public Lcom/android/phone/settings/AutoAnswerSetting;
.super Lmiui/preference/PreferenceActivity;
.source "AutoAnswerSetting.java"


# static fields
.field public static final AUTO_ANSWER_DELAY:Ljava/lang/String; = "button_auto_answer_delay"

.field public static final AUTO_ANSWER_SCENARIO:Ljava/lang/String; = "button_auto_answer_scenario"

.field public static final AUTO_ANSWER_SCENARIO_ALWAYS:I = 0x0

.field public static final AUTO_ANSWER_SCENARIO_BLUETOOTH_ONLY:I = 0x2

.field public static final AUTO_ANSWER_SCENARIO_HEADSET_BLUETOOTH:I = 0x3

.field public static final AUTO_ANSWER_SCENARIO_HEADSET_ONLY:I = 0x1

.field public static final AUTO_ANSWER_SWITCHER:Ljava/lang/String; = "button_auto_answer"

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AutoAnswerSetting"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private createScenarios()V
    .locals 9

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoAnswerSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "button_auto_answer_scenario"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 65
    .local v3, "scenario":I
    const-string v6, "button_auto_answer_scenario"

    invoke-virtual {p0, v6}, Lcom/android/phone/settings/AutoAnswerSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lmiui/preference/RadioButtonPreferenceCategory;

    .line 66
    .local v5, "scenarios":Lmiui/preference/RadioButtonPreferenceCategory;
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoAnswerSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060016

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "scenarioStrings":[Ljava/lang/String;
    new-instance v1, Lcom/android/phone/settings/AutoAnswerSetting$2;

    invoke-direct {v1, p0, v4}, Lcom/android/phone/settings/AutoAnswerSetting$2;-><init>(Lcom/android/phone/settings/AutoAnswerSetting;[Ljava/lang/String;)V

    .line 80
    .local v1, "listener":Landroid/preference/Preference$OnPreferenceClickListener;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v4

    if-ge v0, v6, :cond_0

    .line 81
    new-instance v2, Lmiui/preference/RadioButtonPreference;

    const/4 v6, 0x0

    invoke-direct {v2, p0, v6}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    .local v2, "pref":Lmiui/preference/RadioButtonPreference;
    aget-object v6, v4, v0

    invoke-virtual {v2, v6}, Lmiui/preference/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {v2, v1}, Lmiui/preference/RadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 84
    invoke-virtual {v5, v2}, Lmiui/preference/RadioButtonPreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v2    # "pref":Lmiui/preference/RadioButtonPreference;
    :cond_0
    invoke-virtual {v5, v3}, Lmiui/preference/RadioButtonPreferenceCategory;->setCheckedPosition(I)V

    .line 87
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v3, 0x7f050001

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/AutoAnswerSetting;->addPreferencesFromResource(I)V

    .line 42
    invoke-direct {p0}, Lcom/android/phone/settings/AutoAnswerSetting;->createScenarios()V

    .line 43
    new-instance v1, Lcom/android/phone/settings/AutoAnswerSetting$1;

    invoke-direct {v1, p0}, Lcom/android/phone/settings/AutoAnswerSetting$1;-><init>(Lcom/android/phone/settings/AutoAnswerSetting;)V

    .line 52
    .local v1, "listener":Landroid/preference/Preference$OnPreferenceChangeListener;
    const-string v3, "button_auto_answer"

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/AutoAnswerSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 53
    .local v2, "switcher":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 54
    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoAnswerSetting;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 57
    .local v0, "bar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 58
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 60
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 91
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 92
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoAnswerSetting;->finish()V

    .line 94
    const/4 v1, 0x1

    .line 96
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
