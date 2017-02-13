.class public Lcom/android/phone/settings/RespondViaSmsManager$Settings;
.super Lmiui/preference/PreferenceActivity;
.source "RespondViaSmsManager.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/RespondViaSmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method public static getMessages(Landroid/content/Context;)[Landroid/util/Pair;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")[",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 176
    const/4 v2, 0x4

    new-array v1, v2, [Landroid/util/Pair;

    .line 178
    .local v1, "rst":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "respond_via_sms_prefs"

    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 181
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v2, "canned_response_pref_1"

    const-string v3, "canned_response_pref_1"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    aput-object v2, v1, v5

    .line 183
    const/4 v2, 0x1

    const-string v3, "canned_response_pref_2"

    const-string v4, "canned_response_pref_2"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v1, v2

    .line 185
    const/4 v2, 0x2

    const-string v3, "canned_response_pref_3"

    const-string v4, "canned_response_pref_3"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v1, v2

    .line 187
    const/4 v2, 0x3

    const-string v3, "canned_response_pref_4"

    const-string v4, "canned_response_pref_4"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v1, v2

    .line 190
    return-object v1
.end method

.method public static setMessages(Landroid/content/Context;[Landroid/util/Pair;)V
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "messages":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "respond_via_sms_prefs"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 202
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    move-object v0, p1

    .local v0, "arr$":[Landroid/util/Pair;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 203
    .local v4, "msg":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    const-string v6, "\\s*"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 202
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    :cond_0
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 208
    .end local v4    # "msg":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 210
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    # getter for: Lcom/android/phone/settings/RespondViaSmsManager;->DBG:Z
    invoke-static {}, Lcom/android/phone/settings/RespondViaSmsManager;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Settings: onCreate()..."

    # invokes: Lcom/android/phone/settings/RespondViaSmsManager;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/settings/RespondViaSmsManager;->access$100(Ljava/lang/String;)V

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/settings/RespondViaSmsManager$Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    const-string v3, "respond_via_sms_prefs"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 89
    const v2, 0x7f050032

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/RespondViaSmsManager$Settings;->addPreferencesFromResource(I)V

    .line 92
    const-string v2, "canned_response_pref_1"

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/RespondViaSmsManager$Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    .line 93
    .local v1, "pref":Landroid/preference/EditTextPreference;
    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    const-string v2, "canned_response_pref_2"

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/RespondViaSmsManager$Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1    # "pref":Landroid/preference/EditTextPreference;
    check-cast v1, Landroid/preference/EditTextPreference;

    .line 97
    .restart local v1    # "pref":Landroid/preference/EditTextPreference;
    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 100
    const-string v2, "canned_response_pref_3"

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/RespondViaSmsManager$Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1    # "pref":Landroid/preference/EditTextPreference;
    check-cast v1, Landroid/preference/EditTextPreference;

    .line 101
    .restart local v1    # "pref":Landroid/preference/EditTextPreference;
    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 104
    const-string v2, "canned_response_pref_4"

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/RespondViaSmsManager$Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1    # "pref":Landroid/preference/EditTextPreference;
    check-cast v1, Landroid/preference/EditTextPreference;

    .line 105
    .restart local v1    # "pref":Landroid/preference/EditTextPreference;
    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/phone/settings/RespondViaSmsManager$Settings;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 109
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 111
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 113
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/phone/settings/RespondViaSmsManager$Settings;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 168
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 146
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 147
    .local v1, "itemId":I
    sparse-switch v1, :sswitch_data_0

    .line 162
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 149
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/settings/RespondViaSmsManager$Settings;->finish()V

    goto :goto_0

    .line 153
    :sswitch_1
    const-string v4, "respond_via_sms_prefs"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/settings/RespondViaSmsManager$Settings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 155
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 156
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 157
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 158
    invoke-virtual {p0}, Lcom/android/phone/settings/RespondViaSmsManager$Settings;->finish()V

    goto :goto_0

    .line 147
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0700c6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/16 v5, 0xa0

    const/4 v2, 0x0

    .line 118
    # getter for: Lcom/android/phone/settings/RespondViaSmsManager;->DBG:Z
    invoke-static {}, Lcom/android/phone/settings/RespondViaSmsManager;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceChange: key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/settings/RespondViaSmsManager;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/settings/RespondViaSmsManager;->access$100(Ljava/lang/String;)V

    :cond_0
    move-object v0, p1

    .line 122
    check-cast v0, Landroid/preference/EditTextPreference;

    .local v0, "pref":Landroid/preference/EditTextPreference;
    move-object v1, p2

    .line 124
    check-cast v1, Ljava/lang/String;

    .line 125
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v3, "\\s*"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/android/phone/settings/RespondViaSmsManager$Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0387

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 141
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_0
    return v2

    .line 131
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_2

    .line 132
    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 139
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 141
    const/4 v2, 0x1

    goto :goto_0
.end method
