.class public Lcom/android/phone/settings/GsmUmtsCallForwardOptions;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "GsmUmtsCallForwardOptions.java"


# static fields
.field private static final BUTTON_CFB_KEY:Ljava/lang/String; = "button_cfb_key"

.field private static final BUTTON_CFNRC_KEY:Ljava/lang/String; = "button_cfnrc_key"

.field private static final BUTTON_CFNRY_KEY:Ljava/lang/String; = "button_cfnry_key"

.field private static final BUTTON_CFU_KEY:Ljava/lang/String; = "button_cfu_key"

.field private static final KEY_ENABLED:Ljava/lang/String; = "enabled"

.field private static final KEY_NUMBER:Ljava/lang/String; = "number"

.field private static final KEY_STATUS:Ljava/lang/String; = "status"

.field private static final KEY_TOGGLE:Ljava/lang/String; = "toggle"

.field private static final LOG_TAG:Ljava/lang/String; = "GsmUmtsCallForwardOptions"

.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final DBG:Z

.field private mButtonCFB:Lcom/android/phone/settings/CallForwardEditPreference;

.field private mButtonCFNRc:Lcom/android/phone/settings/CallForwardEditPreference;

.field private mButtonCFNRy:Lcom/android/phone/settings/CallForwardEditPreference;

.field private mButtonCFU:Lcom/android/phone/settings/CallForwardEditPreference;

.field private mFirstResume:Z

.field private mIcicle:Landroid/os/Bundle;

.field private mInitIndex:I

.field private final mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/settings/CallForwardEditPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscription:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 32
    iput-boolean v1, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->DBG:Z

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    .line 52
    iput v1, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mInitIndex:I

    .line 56
    iput v1, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mSubscription:I

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 159
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    const/4 v6, 0x0

    .line 166
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 167
    .local v8, "uri":Landroid/net/Uri;
    const-string v7, ""

    .line 168
    .local v7, "number":Ljava/lang/String;
    const-string v0, "GsmUmtsCallForwardOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 184
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 211
    :goto_2
    if-eqz v6, :cond_0

    .line 212
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 173
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 175
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_4

    .line 176
    :cond_3
    const-string v0, "GsmUmtsCallForwardOptions"

    const-string v1, "onActivityResult: bad contact data, no results found."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    if-eqz v6, :cond_0

    .line 212
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 180
    :cond_4
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 187
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/settings/CallForwardEditPreference;

    invoke-virtual {v0, v7}, Lcom/android/phone/settings/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 205
    .end local v7    # "number":Ljava/lang/String;
    .end local v8    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 211
    if-eqz v6, :cond_0

    .line 212
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 191
    .restart local v7    # "number":Ljava/lang/String;
    .restart local v8    # "uri":Landroid/net/Uri;
    :pswitch_1
    :try_start_3
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/settings/CallForwardEditPreference;

    invoke-virtual {v0, v7}, Lcom/android/phone/settings/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 207
    .end local v7    # "number":Ljava/lang/String;
    .end local v8    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v0

    .line 211
    if-eqz v6, :cond_0

    .line 212
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 195
    .restart local v7    # "number":Ljava/lang/String;
    .restart local v8    # "uri":Landroid/net/Uri;
    :pswitch_2
    :try_start_4
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/settings/CallForwardEditPreference;

    invoke-virtual {v0, v7}, Lcom/android/phone/settings/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 211
    .end local v7    # "number":Ljava/lang/String;
    .end local v8    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 212
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 199
    .restart local v7    # "number":Ljava/lang/String;
    .restart local v8    # "uri":Landroid/net/Uri;
    :pswitch_3
    :try_start_5
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/settings/CallForwardEditPreference;

    invoke-virtual {v0, v7}, Lcom/android/phone/settings/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 60
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-static {p0}, Lcom/android/phone/settings/SimPickerPreference;->showSimPicker(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const v2, 0x7f050008

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->addPreferencesFromResource(I)V

    .line 69
    invoke-virtual {p0}, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getDefaultSubscription()I

    move-result v3

    invoke-static {v2, v3}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mSubscription:I

    .line 71
    const-string v2, "GsmUmtsCallForwardOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call Forwarding options, subscription ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mSubscription:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p0}, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 74
    .local v1, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v2, "button_cfu_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/settings/CallForwardEditPreference;

    iput-object v2, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/settings/CallForwardEditPreference;

    .line 75
    const-string v2, "button_cfb_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/settings/CallForwardEditPreference;

    iput-object v2, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/settings/CallForwardEditPreference;

    .line 76
    const-string v2, "button_cfnry_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/settings/CallForwardEditPreference;

    iput-object v2, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/settings/CallForwardEditPreference;

    .line 77
    const-string v2, "button_cfnrc_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/settings/CallForwardEditPreference;

    iput-object v2, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/settings/CallForwardEditPreference;

    .line 79
    iget-object v2, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/settings/CallForwardEditPreference;

    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/settings/CallForwardEditPreference;

    iget v3, v3, Lcom/android/phone/settings/CallForwardEditPreference;->reason:I

    invoke-virtual {v2, p0, v3}, Lcom/android/phone/settings/CallForwardEditPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 80
    iget-object v2, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/settings/CallForwardEditPreference;

    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/settings/CallForwardEditPreference;

    iget v3, v3, Lcom/android/phone/settings/CallForwardEditPreference;->reason:I

    invoke-virtual {v2, p0, v3}, Lcom/android/phone/settings/CallForwardEditPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 81
    iget-object v2, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/settings/CallForwardEditPreference;

    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/settings/CallForwardEditPreference;

    iget v3, v3, Lcom/android/phone/settings/CallForwardEditPreference;->reason:I

    invoke-virtual {v2, p0, v3}, Lcom/android/phone/settings/CallForwardEditPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 82
    iget-object v2, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/settings/CallForwardEditPreference;

    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/settings/CallForwardEditPreference;

    iget v3, v3, Lcom/android/phone/settings/CallForwardEditPreference;->reason:I

    invoke-virtual {v2, p0, v3}, Lcom/android/phone/settings/CallForwardEditPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 84
    iget-object v2, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/settings/CallForwardEditPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v2, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/settings/CallForwardEditPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v2, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/settings/CallForwardEditPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v2, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/settings/CallForwardEditPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iput-boolean v5, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mFirstResume:Z

    .line 94
    iput-object p1, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    .line 96
    invoke-virtual {p0}, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 97
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto/16 :goto_0
.end method

.method public onError(Landroid/preference/Preference;I)V
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "error"    # I

    .prologue
    .line 229
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onError(Landroid/preference/Preference;I)V

    .line 230
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 231
    return-void
.end method

.method public onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "exception"    # Lcom/android/internal/telephony/CommandException;

    .prologue
    .line 235
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    .line 236
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 237
    return-void
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "reading"    # Z

    .prologue
    .line 148
    iget v0, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mInitIndex:I

    iget-object v1, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget v0, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mInitIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mInitIndex:I

    .line 150
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mInitIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/settings/CallForwardEditPreference;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mSubscription:I

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/phone/settings/CallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    .line 153
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    .line 154
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 219
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 220
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->finish()V

    .line 222
    const/4 v1, 0x1

    .line 224
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 105
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 107
    iget-boolean v4, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mFirstResume:Z

    if-eqz v4, :cond_1

    .line 108
    iget-object v4, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    if-nez v4, :cond_2

    .line 110
    iget-object v4, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mInitIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/settings/CallForwardEditPreference;

    iget v5, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mSubscription:I

    invoke-virtual {v4, p0, v6, v5}, Lcom/android/phone/settings/CallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    .line 125
    :cond_0
    iput-boolean v6, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mFirstResume:Z

    .line 126
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    .line 128
    :cond_1
    return-void

    .line 112
    :cond_2
    iget-object v4, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mInitIndex:I

    .line 114
    iget-object v4, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/settings/CallForwardEditPreference;

    .line 115
    .local v3, "pref":Lcom/android/phone/settings/CallForwardEditPreference;
    iget-object v4, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    invoke-virtual {v3}, Lcom/android/phone/settings/CallForwardEditPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 116
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "toggle"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/phone/settings/CallForwardEditPreference;->setToggled(Z)Lcom/android/phone/settings/EditPhoneNumberPreference;

    .line 117
    new-instance v1, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 118
    .local v1, "cf":Lcom/android/internal/telephony/CallForwardInfo;
    const-string v4, "number"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 119
    const-string v4, "status"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 120
    invoke-virtual {v3, v1}, Lcom/android/phone/settings/CallForwardEditPreference;->handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 121
    const-string v4, "enabled"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v1, v4}, Lcom/android/phone/settings/CallForwardEditPreference;->handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;Z)V

    .line 122
    const/4 v4, 0x1

    iget v5, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mSubscription:I

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/phone/settings/CallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 134
    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/settings/CallForwardEditPreference;

    .line 135
    .local v2, "pref":Lcom/android/phone/settings/CallForwardEditPreference;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 136
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "toggle"

    invoke-virtual {v2}, Lcom/android/phone/settings/CallForwardEditPreference;->isToggled()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    iget-object v3, v2, Lcom/android/phone/settings/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v3, :cond_0

    .line 138
    const-string v3, "number"

    iget-object v4, v2, Lcom/android/phone/settings/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v3, "status"

    iget-object v4, v2, Lcom/android/phone/settings/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    const-string v3, "enabled"

    invoke-virtual {v2}, Lcom/android/phone/settings/CallForwardEditPreference;->isEnabled()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 142
    :cond_0
    invoke-virtual {v2}, Lcom/android/phone/settings/CallForwardEditPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 144
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "pref":Lcom/android/phone/settings/CallForwardEditPreference;
    :cond_1
    return-void
.end method
