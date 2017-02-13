.class public Lcom/android/phone/settings/CdmaCallForwardOptions;
.super Lmiui/preference/PreferenceActivity;
.source "CdmaCallForwardOptions.java"


# static fields
.field private static final BUTTON_ALL_KEY:Ljava/lang/String; = "button_disable_all"

.field private static final BUTTON_CFB_KEY:Ljava/lang/String; = "button_cfb"

.field private static final BUTTON_CFNRC_KEY:Ljava/lang/String; = "button_cfnrc"

.field private static final BUTTON_CFNRY_KEY:Ljava/lang/String; = "button_cfnry"

.field private static final BUTTON_CFU_KEY:Ljava/lang/String; = "button_cfu"

.field private static final LOG_TAG:Ljava/lang/String; = "CdmaCallForwardOptions"

.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final DBG:Z

.field private mButtonAll:Landroid/preference/Preference;

.field private mButtonCFB:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

.field private mButtonCFNRc:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

.field private mButtonCFNRy:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

.field private mButtonCFU:Lcom/android/phone/settings/CdmaCallForwardEditPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/settings/CdmaCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/settings/CdmaCallForwardOptions;->DBG:Z

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 97
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const/4 v6, 0x0

    .line 102
    .local v6, "cursor":Landroid/database/Cursor;
    const-string v7, ""

    .line 105
    .local v7, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 106
    .local v8, "uri":Landroid/net/Uri;
    const-string v0, "CdmaCallForwardOptions"

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

    .line 107
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 126
    :goto_1
    if-eqz v6, :cond_2

    .line 127
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 131
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 133
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/settings/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    invoke-virtual {v0, v7}, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    .restart local v8    # "uri":Landroid/net/Uri;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/android/phone/settings/CdmaCallForwardOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/settings/CdmaCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 113
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_5

    .line 114
    :cond_4
    const-string v0, "CdmaCallForwardOptions"

    const-string v1, "onActivityResult: bad contact data, no results found."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    if-eqz v6, :cond_0

    .line 127
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 117
    :cond_5
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    goto :goto_1

    .line 120
    .end local v8    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 126
    if-eqz v6, :cond_2

    .line 127
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 122
    :catch_1
    move-exception v0

    .line 126
    if-eqz v6, :cond_2

    .line 127
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 126
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 127
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 136
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/settings/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    invoke-virtual {v0, v7}, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 139
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/settings/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    invoke-virtual {v0, v7}, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 142
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/settings/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    invoke-virtual {v0, v7}, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f0b0471

    .line 49
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v1, 0x7f05000c

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CdmaCallForwardOptions;->addPreferencesFromResource(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/phone/settings/CdmaCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 53
    .local v0, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v1, "button_cfu"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    iput-object v1, p0, Lcom/android/phone/settings/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    .line 54
    const-string v1, "button_cfb"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    iput-object v1, p0, Lcom/android/phone/settings/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    .line 55
    const-string v1, "button_cfnry"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    iput-object v1, p0, Lcom/android/phone/settings/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    .line 56
    const-string v1, "button_cfnrc"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    iput-object v1, p0, Lcom/android/phone/settings/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    .line 57
    const-string v1, "button_disable_all"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/settings/CdmaCallForwardOptions;->mButtonAll:Landroid/preference/Preference;

    .line 58
    iget-object v1, p0, Lcom/android/phone/settings/CdmaCallForwardOptions;->mButtonAll:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 60
    sget-boolean v1, Lmiui/os/Build;->IS_CTA_BUILD:Z

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/android/phone/settings/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->setTitle(I)V

    .line 62
    iget-object v1, p0, Lcom/android/phone/settings/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->setDialogTitle(I)V

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/android/phone/settings/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    iget-object v2, p0, Lcom/android/phone/settings/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    iget v2, v2, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->mReason:I

    invoke-virtual {v1, p0, v2}, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 66
    iget-object v1, p0, Lcom/android/phone/settings/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    iget-object v2, p0, Lcom/android/phone/settings/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    iget v2, v2, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->mReason:I

    invoke-virtual {v1, p0, v2}, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 67
    iget-object v1, p0, Lcom/android/phone/settings/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    iget-object v2, p0, Lcom/android/phone/settings/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    iget v2, v2, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->mReason:I

    invoke-virtual {v1, p0, v2}, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 68
    iget-object v1, p0, Lcom/android/phone/settings/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    iget-object v2, p0, Lcom/android/phone/settings/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    iget v2, v2, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->mReason:I

    invoke-virtual {v1, p0, v2}, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 70
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->setActionBar(Landroid/app/Activity;)V

    .line 71
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 151
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 152
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/android/phone/settings/CdmaCallForwardOptions;->finish()V

    .line 154
    const/4 v1, 0x1

    .line 156
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 75
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 77
    iget-object v1, p0, Lcom/android/phone/settings/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->setEnabled(Z)V

    .line 78
    iget-object v1, p0, Lcom/android/phone/settings/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->setEnabled(Z)V

    .line 79
    iget-object v1, p0, Lcom/android/phone/settings/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->setEnabled(Z)V

    .line 80
    iget-object v1, p0, Lcom/android/phone/settings/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->setEnabled(Z)V

    .line 82
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 83
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/android/phone/settings/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->setEnabled(Z)V

    .line 87
    iget-object v1, p0, Lcom/android/phone/settings/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->setEnabled(Z)V

    .line 88
    iget-object v1, p0, Lcom/android/phone/settings/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->setEnabled(Z)V

    .line 89
    iget-object v1, p0, Lcom/android/phone/settings/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->setEnabled(Z)V

    .line 92
    :cond_1
    return-void
.end method
