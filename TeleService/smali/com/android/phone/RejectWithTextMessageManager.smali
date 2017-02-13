.class public Lcom/android/phone/RejectWithTextMessageManager;
.super Ljava/lang/Object;
.source "RejectWithTextMessageManager.java"


# static fields
.field private static final DBG:Z = false

.field private static final KEY_CANNED_RESPONSE_PREF_1:Ljava/lang/String; = "canned_response_pref_1"

.field private static final KEY_CANNED_RESPONSE_PREF_2:Ljava/lang/String; = "canned_response_pref_2"

.field private static final KEY_CANNED_RESPONSE_PREF_3:Ljava/lang/String; = "canned_response_pref_3"

.field private static final KEY_CANNED_RESPONSE_PREF_4:Ljava/lang/String; = "canned_response_pref_4"

.field private static final NUM_CANNED_RESPONSES:I = 0x4

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "respond_via_sms_prefs"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/android/phone/RejectWithTextMessageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/RejectWithTextMessageManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowRespondViaSmsForCall(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;)Z
    .locals 6
    .param p0, "call"    # Lcom/android/services/telephony/common/Call;
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 200
    if-nez p0, :cond_1

    .line 201
    sget-object v3, Lcom/android/phone/RejectWithTextMessageManager;->TAG:Ljava/lang/String;

    const-string v4, "allowRespondViaSmsForCall: null ringingCall!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    :goto_0
    return v2

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    .line 211
    sget-object v3, Lcom/android/phone/RejectWithTextMessageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowRespondViaSmsForCall: ringingCall not ringing! state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    :cond_2
    if-nez p1, :cond_3

    .line 220
    sget-object v3, Lcom/android/phone/RejectWithTextMessageManager;->TAG:Ljava/lang/String;

    const-string v4, "allowRespondViaSmsForCall: null Connection!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 225
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "number":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 228
    sget-object v3, Lcom/android/phone/RejectWithTextMessageManager;->TAG:Ljava/lang/String;

    const-string v4, "allowRespondViaSmsForCall: no incoming number!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 237
    sget-object v3, Lcom/android/phone/RejectWithTextMessageManager;->TAG:Ljava/lang/String;

    const-string v4, "allowRespondViaSmsForCall: incoming \'number\' is a SIP address."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    .line 244
    .local v1, "presentation":I
    sget v4, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-ne v1, v4, :cond_6

    .line 248
    sget-object v3, Lcom/android/phone/RejectWithTextMessageManager;->TAG:Ljava/lang/String;

    const-string v4, "allowRespondViaSmsForCall: PRESENTATION_RESTRICTED."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDMLocked()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 254
    sget-object v3, Lcom/android/phone/RejectWithTextMessageManager;->TAG:Ljava/lang/String;

    const-string v4, "allowRespondViaSmsForCall: isDMLocked."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    :cond_7
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultRespondViaMessageApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 272
    goto :goto_0
.end method

.method private static getSendTextSlotId()I
    .locals 6

    .prologue
    .line 283
    const/4 v3, 0x0

    .line 284
    .local v3, "slotId":I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 285
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 286
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 287
    .local v2, "ringCall":Lcom/android/internal/telephony/Call;
    if-eqz v2, :cond_0

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    if-eq v4, v5, :cond_0

    .line 288
    move-object v0, v2

    .line 291
    .end local v2    # "ringCall":Lcom/android/internal/telephony/Call;
    :cond_0
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    .line 292
    .local v1, "info":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v1, :cond_1

    .line 293
    iget v3, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    .line 296
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSendTextSlotId, slot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/RejectWithTextMessageManager;->log(Ljava/lang/String;)V

    .line 297
    return v3
.end method

.method public static loadCannedResponses()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 86
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    const-string v4, "respond_via_sms_prefs"

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/PhoneGlobals;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 88
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 90
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    .local v2, "responses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "canned_response_pref_1"

    const v4, 0x7f0b0383

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 97
    const/4 v3, 0x1

    const-string v4, "canned_response_pref_2"

    const v5, 0x7f0b0384

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 99
    const/4 v3, 0x2

    const-string v4, "canned_response_pref_3"

    const v5, 0x7f0b0385

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 101
    const/4 v3, 0x3

    const-string v4, "canned_response_pref_4"

    const v5, 0x7f0b0386

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 103
    return-object v2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 276
    sget-object v0, Lcom/android/phone/RejectWithTextMessageManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void
.end method

.method private static putExtraSlotId(Landroid/content/Intent;I)V
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "slot"    # I

    .prologue
    .line 301
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    invoke-static {p1}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, p1

    .line 306
    .local v0, "slotId":I
    :goto_0
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    if-nez v1, :cond_2

    .line 307
    sget-object v1, Lcom/android/phone/RejectWithTextMessageManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sendText], No simcard in slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", do nothing."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .end local v0    # "slotId":I
    :cond_0
    :goto_1
    return-void

    .line 304
    :cond_1
    invoke-static {}, Lcom/android/phone/RejectWithTextMessageManager;->getSendTextSlotId()I

    move-result v0

    goto :goto_0

    .line 310
    .restart local v0    # "slotId":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putExtraSlotId, slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/RejectWithTextMessageManager;->log(Ljava/lang/String;)V

    .line 311
    const-string v1, "simId"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method public static rejectCallWithMessage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "slot"    # I

    .prologue
    const/4 v4, 0x1

    .line 160
    const-string v2, "smsto"

    const/4 v3, 0x0

    invoke-static {v2, p0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 161
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RESPOND_VIA_MESSAGE"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 162
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 163
    invoke-static {v0, p2}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 165
    invoke-static {v0, p2}, Lcom/android/phone/RejectWithTextMessageManager;->putExtraSlotId(Landroid/content/Intent;I)V

    .line 167
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    invoke-static {p0}, Lcom/android/phone/RejectWithTextMessageManager;->showMessageSentToast(Ljava/lang/String;)V

    .line 173
    :goto_0
    const-string v2, "com.android.mms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/phone/PhoneGlobals;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 175
    return-void

    .line 170
    :cond_0
    const-string v2, "exit_on_sent"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    const-string v2, "showUI"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static showMessageSentToast(Ljava/lang/String;)V
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/RejectWithTextMessageManager$1;

    invoke-direct {v1, p0}, Lcom/android/phone/RejectWithTextMessageManager$1;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 151
    return-void
.end method
