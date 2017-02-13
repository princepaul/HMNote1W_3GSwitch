.class public Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;
.super Landroid/preference/PreferenceFragment;
.source "SelectSimCardActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/SelectSimCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MultiSimFragment"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/SelectSimCardActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/settings/SelectSimCardActivity;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 174
    iget-object v0, p0, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    invoke-virtual {p0}, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    # setter for: Lcom/mediatek/settings/SelectSimCardActivity;->mSimPrefMainScreen:Landroid/preference/PreferenceScreen;
    invoke-static {v0, v1}, Lcom/mediatek/settings/SelectSimCardActivity;->access$102(Lcom/mediatek/settings/SelectSimCardActivity;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    .line 175
    iget-object v0, p0, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    # getter for: Lcom/mediatek/settings/SelectSimCardActivity;->mSimPrefMainScreen:Landroid/preference/PreferenceScreen;
    invoke-static {v0}, Lcom/mediatek/settings/SelectSimCardActivity;->access$100(Lcom/mediatek/settings/SelectSimCardActivity;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 176
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/16 v10, 0x12c

    const/16 v9, 0xc8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 213
    move-object v4, p1

    check-cast v4, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    invoke-virtual {v4}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->getSimSlotId()I

    move-result v3

    .line 215
    .local v3, "slotId":I
    iget-object v4, p0, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[slotId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/settings/SelectSimCardActivity;->log(Ljava/lang/String;)V

    .line 216
    iget-object v4, p0, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[newValue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/settings/SelectSimCardActivity;->log(Ljava/lang/String;)V

    .line 217
    iget-object v4, p0, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[key = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/settings/SelectSimCardActivity;->log(Ljava/lang/String;)V

    .line 218
    iget-object v4, p0, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[mFeatureName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    iget-object v6, v6, Lcom/mediatek/settings/SelectSimCardActivity;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/settings/SelectSimCardActivity;->log(Ljava/lang/String;)V

    .line 219
    const-string v4, "VT"

    iget-object v5, p0, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    iget-object v5, v5, Lcom/mediatek/settings/SelectSimCardActivity;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "button_vt_replace_expand_key_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 222
    iget-object v4, p0, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    iput v7, v4, Lcom/mediatek/settings/SelectSimCardActivity;->mVTWhichToSave:I

    .line 223
    iget-object v4, p0, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    iput v3, v4, Lcom/mediatek/settings/SelectSimCardActivity;->mVTSimId:I

    .line 224
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 225
    iget-object v4, p0, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathDefault()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v10}, Lcom/mediatek/settings/SelectSimCardActivity;->showDialogPic(Ljava/lang/String;I)V

    .line 256
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v8

    .line 226
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 227
    iget-object v4, p0, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    invoke-static {v3}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v9}, Lcom/mediatek/settings/SelectSimCardActivity;->showDialogPic(Ljava/lang/String;I)V

    goto :goto_0

    .line 230
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "button_vt_replace_peer_expand_key_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 232
    iget-object v4, p0, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    iput v3, v4, Lcom/mediatek/settings/SelectSimCardActivity;->mVTSimId:I

    .line 233
    iget-object v4, p0, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    iput v8, v4, Lcom/mediatek/settings/SelectSimCardActivity;->mVTWhichToSave:I

    .line 234
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 235
    iget-object v4, p0, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathDefault2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v10}, Lcom/mediatek/settings/SelectSimCardActivity;->showDialogPic(Ljava/lang/String;I)V

    goto :goto_0

    .line 236
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 237
    iget-object v4, p0, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    invoke-static {v3}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect2(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v9}, Lcom/mediatek/settings/SelectSimCardActivity;->showDialogPic(Ljava/lang/String;I)V

    goto :goto_0

    .line 241
    :cond_4
    const-string v4, "NETWORK_MODE"

    iget-object v5, p0, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    iget-object v5, v5, Lcom/mediatek/settings/SelectSimCardActivity;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 242
    iget-object v4, p0, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    iget-object v4, v4, Lcom/mediatek/settings/SelectSimCardActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    invoke-virtual {v5, v3}, Lcom/mediatek/settings/SelectSimCardActivity;->getNetworkModeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 244
    .local v2, "settingsNetworkMode":I
    iget-object v4, p0, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current network mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/settings/SelectSimCardActivity;->log(Ljava/lang/String;)V

    .line 245
    iget-object v4, p0, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lcom/mediatek/settings/SelectSimCardActivity;->getNetworkMode(II)I

    move-result v1

    .line 246
    .local v1, "networkMode":I
    iget-object v4, p0, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new network mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/settings/SelectSimCardActivity;->log(Ljava/lang/String;)V

    .line 247
    if-eq v2, v1, :cond_0

    .line 248
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.phone.NETWORK_MODE_CHANGE"

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 249
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "com.android.phone.OLD_NETWORK_MODE"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    const-string v4, "com.android.phone.NETWORK_MODE_CHANGE"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    const-string v4, "simId"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    iget-object v4, p0, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/mediatek/settings/SelectSimCardActivity;->showDialog(I)V

    .line 253
    iget-object v4, p0, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    invoke-virtual {v4, v0}, Lcom/mediatek/settings/SelectSimCardActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 180
    instance-of v8, p2, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    iget-object v8, v8, Lcom/mediatek/settings/SelectSimCardActivity;->mType:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    sget-object v9, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;->CheckBox:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    if-ne v8, v9, :cond_3

    move-object v3, p2

    .line 181
    check-cast v3, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    .line 182
    .local v3, "simInfoPref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "com.android.phone_preferences"

    invoke-virtual {v8, v9, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 184
    .local v5, "sp":Landroid/content/SharedPreferences;
    if-nez v5, :cond_1

    .line 185
    iget-object v7, p0, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    const-string v8, "can not find \'com.android.phone_preferences\'..."

    invoke-virtual {v7, v8}, Lcom/mediatek/settings/SelectSimCardActivity;->log(Ljava/lang/String;)V

    .line 208
    .end local v3    # "simInfoPref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return v6

    .line 188
    .restart local v3    # "simInfoPref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    .restart local v5    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    iget-object v8, p0, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    iget-object v8, v8, Lcom/mediatek/settings/SelectSimCardActivity;->mBaseKey:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    iget-object v8, v8, Lcom/mediatek/settings/SelectSimCardActivity;->mBaseKey:Ljava/lang/String;

    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 189
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    iget-object v9, v9, Lcom/mediatek/settings/SelectSimCardActivity;->mBaseKey:Ljava/lang/String;

    iget-object v10, p0, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    iget-object v10, v10, Lcom/mediatek/settings/SelectSimCardActivity;->mBaseKey:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->getSimSlotId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v5, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 191
    .local v2, "mAutoDropBack":Z
    iget-object v8, p0, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onPreferenceTreeClick, WidgetType.CheckBox, ischecked : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mediatek/settings/SelectSimCardActivity;->log(Ljava/lang/String;)V

    .line 192
    if-nez v2, :cond_2

    move v6, v7

    :cond_2
    invoke-virtual {v3, v6}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setChecked(Z)V

    move v6, v7

    .line 193
    goto :goto_0

    .line 197
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "mAutoDropBack":Z
    .end local v3    # "simInfoPref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    :cond_3
    instance-of v8, p2, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    iget-object v8, v8, Lcom/mediatek/settings/SelectSimCardActivity;->mType:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    sget-object v9, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;->None:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    if-ne v8, v9, :cond_0

    move-object v3, p2

    .line 198
    check-cast v3, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    .line 199
    .restart local v3    # "simInfoPref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    invoke-virtual {v3}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->getSimSlotId()I

    move-result v4

    .line 200
    .local v4, "slotId":I
    iget-object v6, p0, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPreferenceTreeClick with slotId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/mediatek/settings/SelectSimCardActivity;->log(Ljava/lang/String;)V

    .line 201
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 202
    .local v0, "intent":Landroid/content/Intent;
    const-string v6, "slotId"

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    const-string v6, "simId"

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0}, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v8, -0x1

    invoke-virtual {v6, v8, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 205
    iget-object v6, p0, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    invoke-virtual {v6}, Lcom/mediatek/settings/SelectSimCardActivity;->finish()V

    move v6, v7

    .line 206
    goto/16 :goto_0
.end method
