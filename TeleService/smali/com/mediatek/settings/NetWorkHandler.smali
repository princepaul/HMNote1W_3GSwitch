.class public Lcom/mediatek/settings/NetWorkHandler;
.super Landroid/os/Handler;
.source "NetWorkHandler.java"


# static fields
.field public static final MESSAGE_GET_PREFERRED_NETWORK_TYPE:I = 0x0

.field public static final MESSAGE_SET_PREFERRED_NETWORK_TYPE:I = 0x1

.field private static final PREFERRED_NETWORK_MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NetWorkHandler:::"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

.field private mPreference:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/preference/ListPreference;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "preference"    # Landroid/preference/ListPreference;

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/mediatek/settings/NetWorkHandler;->mPreference:Landroid/preference/ListPreference;

    .line 32
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/NetWorkHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 33
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    iput-object v0, p0, Lcom/mediatek/settings/NetWorkHandler;->mPhoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    .line 34
    iput-object p1, p0, Lcom/mediatek/settings/NetWorkHandler;->mActivity:Landroid/app/Activity;

    .line 35
    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 53
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 55
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_7

    .line 56
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v1, v3, v6

    .line 57
    .local v1, "modemNetworkMode":I
    const-string v3, "NetWorkHandler:::"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse: modemNetworkMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v3, p0, Lcom/mediatek/settings/NetWorkHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 63
    .local v2, "settingsNetworkMode":I
    const-string v3, "NetWorkHandler:::"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeReponse: settingsNetworkMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    if-eq v1, v7, :cond_0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    const/4 v3, 0x6

    if-eq v1, v3, :cond_0

    const/4 v3, 0x7

    if-eq v1, v3, :cond_0

    const/16 v3, 0x9

    if-ne v1, v3, :cond_4

    .line 75
    :cond_0
    const-string v3, "NetWorkHandler:::"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse: if 1: modemNetworkMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    if-ne v1, v7, :cond_2

    .line 84
    const/4 v1, 0x0

    .line 85
    if-eqz v2, :cond_1

    .line 86
    const/4 v2, 0x0

    .line 87
    iget-object v3, p0, Lcom/mediatek/settings/NetWorkHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 91
    const-string v3, "NetWorkHandler:::"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse: if diff update when get3 with 0 : settingsNetworkMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_1
    :goto_0
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isLte()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isTddSupportForLte()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 107
    const-string v3, "NetWorkHandler:::"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NetWorkHandler MTK_LTE_DC_SUPPORT support update modemNetworkMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v3, p0, Lcom/mediatek/settings/NetWorkHandler;->mPreference:Landroid/preference/ListPreference;

    invoke-static {v3, v1}, Lcom/mediatek/phone/gemini/GeminiUtils;->updateSglteMode(Landroid/preference/ListPreference;I)V

    .line 132
    .end local v1    # "modemNetworkMode":I
    .end local v2    # "settingsNetworkMode":I
    :goto_1
    return-void

    .line 95
    .restart local v1    # "modemNetworkMode":I
    .restart local v2    # "settingsNetworkMode":I
    :cond_2
    if-eq v1, v2, :cond_1

    .line 96
    move v2, v1

    .line 97
    iget-object v3, p0, Lcom/mediatek/settings/NetWorkHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 101
    const-string v3, "NetWorkHandler:::"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse: modem and setting provider not same: settingsNetworkMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_3
    const-string v3, "NetWorkHandler:::"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modemNetworkMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  preference entry = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/settings/NetWorkHandler;->mPreference:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v3, p0, Lcom/mediatek/settings/NetWorkHandler;->mPreference:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 115
    iget-object v3, p0, Lcom/mediatek/settings/NetWorkHandler;->mPreference:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/mediatek/settings/NetWorkHandler;->mPreference:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 117
    :cond_4
    const/16 v3, 0xb

    if-ne v1, v3, :cond_5

    .line 120
    const-string v3, "NetWorkHandler:::"

    const-string v4, "handleGetPreferredNetworkTypeResponse: lte only: no action"

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 122
    :cond_5
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isLte()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isTddSupportForLte()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 123
    const-string v3, "NetWorkHandler:::"

    const-string v4, "handleGetPreferredNetworkTypeResponse: else: for sglte no need to reset"

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 125
    :cond_6
    const-string v3, "NetWorkHandler:::"

    const-string v4, "handleGetPreferredNetworkTypeResponse: else: reset to default"

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Lcom/mediatek/settings/NetWorkHandler;->resetNetworkModeToDefault()V

    goto/16 :goto_1

    .line 130
    .end local v1    # "modemNetworkMode":I
    .end local v2    # "settingsNetworkMode":I
    :cond_7
    const-string v3, "NetWorkHandler:::"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse: exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 135
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 136
    .local v0, "ar":Landroid/os/AsyncResult;
    const-string v3, "NetWorkHandler:::"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetPreferredNetworkTypeResponse: ar.exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v3, p0, Lcom/mediatek/settings/NetWorkHandler;->mActivity:Landroid/app/Activity;

    const/16 v4, 0x190

    invoke-virtual {v3, v4}, Landroid/app/Activity;->removeDialog(I)V

    .line 142
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 143
    iget-object v3, p0, Lcom/mediatek/settings/NetWorkHandler;->mPhoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    invoke-virtual {v3}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->get3GCapabilitySIM()I

    move-result v2

    .line 144
    .local v2, "slotId":I
    iget-object v3, p0, Lcom/mediatek/settings/NetWorkHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/mediatek/settings/NetWorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPreferredNetworkType(Lcom/android/internal/telephony/Phone;Landroid/os/Message;I)V

    .line 151
    .end local v2    # "slotId":I
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v3, p0, Lcom/mediatek/settings/NetWorkHandler;->mPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 147
    .local v1, "networkMode":I
    const-string v3, "NetWorkHandler:::"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetPreferredNetworkTypeResponse: no exception and save the manual provider:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v3, p0, Lcom/mediatek/settings/NetWorkHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "user_preferred_network_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private resetNetworkModeToDefault()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 155
    iget-object v1, p0, Lcom/mediatek/settings/NetWorkHandler;->mPreference:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/mediatek/settings/NetWorkHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 163
    iget-object v1, p0, Lcom/mediatek/settings/NetWorkHandler;->mPhoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    invoke-virtual {v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->get3GCapabilitySIM()I

    move-result v0

    .line 164
    .local v0, "slotId":I
    iget-object v1, p0, Lcom/mediatek/settings/NetWorkHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/NetWorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {v1, v3, v2, v0}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->setPreferredNetworkType(Lcom/android/internal/telephony/Phone;ILandroid/os/Message;I)V

    .line 166
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 39
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 50
    :goto_0
    return-void

    .line 41
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/mediatek/settings/NetWorkHandler;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 45
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/mediatek/settings/NetWorkHandler;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPreference(Landroid/preference/ListPreference;)V
    .locals 3
    .param p1, "preference"    # Landroid/preference/ListPreference;

    .prologue
    .line 169
    const-string v0, "NetWorkHandler:::"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreference: getEntry = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iput-object p1, p0, Lcom/mediatek/settings/NetWorkHandler;->mPreference:Landroid/preference/ListPreference;

    .line 171
    return-void
.end method
