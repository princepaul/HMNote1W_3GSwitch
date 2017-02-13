.class Lcom/android/phone/CallStateMonitor;
.super Landroid/os/Handler;
.source "CallStateMonitor.java"


# static fields
.field public static final CRSS_SUPP_SERVICE:I = 0x8d

.field private static final DBG:Z

.field private static final EVENT_CIPHER_INDICATION:I = 0x3c

.field public static final EVENT_OTA_PROVISION_CHANGE:I = 0x14

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final PHONE_CDMA_CALL_WAITING:I = 0x8

.field public static final PHONE_DISCONNECT:I = 0x3

.field public static final PHONE_DISCONNECT2:I = 0x67

.field public static final PHONE_DISCONNECT3:I = 0xcb

.field public static final PHONE_DISCONNECT4:I = 0x12f

.field public static final PHONE_DISCONNECT_GEMINI:[I

.field public static final PHONE_ENHANCED_VP_OFF:I = 0xa

.field public static final PHONE_ENHANCED_VP_ON:I = 0x9

.field public static final PHONE_INCOMING_RING:I = 0x5

.field public static final PHONE_NEW_RINGING_CONNECTION:I = 0x2

.field public static final PHONE_ON_DIAL_CHARS:I = 0xd

.field public static final PHONE_RESEND_MUTE:I = 0xc

.field public static final PHONE_RINGBACK_TONE:I = 0xb

.field public static final PHONE_STATE_CHANGED:I = 0x1

.field public static final PHONE_STATE_DISPLAYINFO:I = 0x6

.field public static final PHONE_STATE_SIGNALINFO:I = 0x7

.field public static final PHONE_UNKNOWN_CONNECTION_APPEARED:I = 0x4

.field public static final PHONE_VT_RING_INFO:I = 0xd

.field public static final PHONE_VT_STATUS_INFO:I = 0xe

.field public static final PHONE_WAITING_DISCONNECT:I = 0xf

.field public static final SUPP_SERVICE_FAILED:I = 0x6e

.field public static final SUPP_SERVICE_NOTIFICATION:I = 0x8c

.field public static final VOLTE_CONFERENCE_CALL_INDICATION:I = 0x309


# instance fields
.field private callManager:Lcom/android/internal/telephony/CallManager;

.field private registeredHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 45
    const-class v2, Lcom/android/phone/CallStateMonitor;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/phone/CallStateMonitor;->LOG_TAG:Ljava/lang/String;

    .line 46
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/CallStateMonitor;->DBG:Z

    .line 222
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/CallStateMonitor;->PHONE_DISCONNECT_GEMINI:[I

    return-void

    :cond_0
    move v0, v1

    .line 46
    goto :goto_0

    .line 222
    nop

    :array_0
    .array-data 4
        0x3
        0x67
        0xcb
        0x12f
    .end array-data
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .locals 1
    .param p1, "callManager"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/phone/CallStateMonitor;->callManager:Lcom/android/internal/telephony/CallManager;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallStateMonitor;->registeredHandlers:Ljava/util/ArrayList;

    .line 75
    invoke-direct {p0}, Lcom/android/phone/CallStateMonitor;->registerForNotifications()V

    .line 76
    return-void
.end method

.method private registerForNotifications()V
    .locals 3

    .prologue
    const/16 v2, 0xd

    const/4 v1, 0x1

    .line 100
    invoke-static {p0, v1}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForPreciseCallStateChanged(Landroid/os/Handler;I)V

    .line 101
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForNewRingingConnection(Landroid/os/Handler;I)V

    .line 102
    sget-object v0, Lcom/android/phone/CallStateMonitor;->PHONE_DISCONNECT_GEMINI:[I

    invoke-static {p0, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForDisconnect(Landroid/os/Handler;[I)V

    .line 103
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForUnknownConnection(Landroid/os/Handler;I)V

    .line 104
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForIncomingRing(Landroid/os/Handler;I)V

    .line 105
    invoke-static {p0, v2}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForPostDialCharacter(Landroid/os/Handler;I)V

    .line 107
    invoke-static {p0, v2}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForVtRingInfo(Landroid/os/Handler;I)V

    .line 108
    const/16 v0, 0xe

    invoke-static {p0, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForVtStatusInfo(Landroid/os/Handler;I)V

    .line 109
    const/16 v0, 0xf

    invoke-static {p0, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForVtReplaceDisconnect(Landroid/os/Handler;I)V

    .line 112
    const/16 v0, 0x14

    invoke-static {p0, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForCdmaOtaStatusChange(Landroid/os/Handler;I)V

    .line 113
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForCallWaiting(Landroid/os/Handler;I)V

    .line 114
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForDisplayInfo(Landroid/os/Handler;I)V

    .line 115
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForSignalInfo(Landroid/os/Handler;I)V

    .line 116
    const/16 v0, 0x9

    invoke-static {p0, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;I)V

    .line 117
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;I)V

    .line 119
    iget-object v0, p0, Lcom/android/phone/CallStateMonitor;->callManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 120
    const/16 v0, 0xb

    invoke-static {p0, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForRingbackTone(Landroid/os/Handler;I)V

    .line 121
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/phone/CallStateMonitor;->callManager:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/CallStateMonitor;->registerForPhoneStatesMTK()V

    .line 129
    return-void
.end method

.method private registerForPhoneStatesMTK()V
    .locals 2

    .prologue
    .line 226
    const/16 v0, 0x6e

    invoke-static {p0, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForSuppServiceFailed(Landroid/os/Handler;I)V

    .line 227
    const/16 v0, 0x8d

    invoke-static {p0, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForCrssSuppServiceNotification(Landroid/os/Handler;I)V

    .line 228
    const/16 v0, 0x8c

    invoke-static {p0, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForSuppServiceNotification(Landroid/os/Handler;I)V

    .line 231
    const/16 v0, 0x3c

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForCipherIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 239
    return-void
.end method

.method private unRegisterForPhoneStatesMTK()V
    .locals 0

    .prologue
    .line 247
    return-void
.end method


# virtual methods
.method public addListener(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 132
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallStateMonitor;->registeredHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    sget-boolean v0, Lcom/android/phone/CallStateMonitor;->DBG:Z

    if-eqz v0, :cond_0

    .line 134
    sget-object v0, Lcom/android/phone/CallStateMonitor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding Handler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallStateMonitor;->registeredHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 142
    sget-boolean v2, Lcom/android/phone/CallStateMonitor;->DBG:Z

    if-eqz v2, :cond_0

    .line 143
    sget-object v2, Lcom/android/phone/CallStateMonitor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CallStateMonitor;->registeredHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 147
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {v0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 149
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_1
    return-void
.end method

.method public unregisterForNotifications()V
    .locals 2

    .prologue
    .line 155
    invoke-static {p0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 156
    invoke-static {p0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 157
    invoke-static {p0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 158
    invoke-static {p0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 159
    invoke-static {p0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 160
    invoke-static {p0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 161
    invoke-static {p0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->unregisterForPostDialCharacter(Landroid/os/Handler;)V

    .line 163
    invoke-static {p0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->unregisterForVtRingInfo(Landroid/os/Handler;)V

    .line 164
    invoke-static {p0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->unregisterForVtReplaceDisconnect(Landroid/os/Handler;)V

    .line 167
    invoke-static {p0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 168
    invoke-static {p0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 169
    invoke-static {p0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 170
    invoke-static {p0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 171
    invoke-static {p0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 172
    invoke-static {p0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 173
    iget-object v0, p0, Lcom/android/phone/CallStateMonitor;->callManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 174
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/phone/CallStateMonitor;->callManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 178
    :cond_0
    invoke-static {p0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 179
    invoke-static {p0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 183
    invoke-direct {p0}, Lcom/android/phone/CallStateMonitor;->unRegisterForPhoneStatesMTK()V

    .line 185
    return-void
.end method

.method public updateAfterRadioTechnologyChange()V
    .locals 2

    .prologue
    .line 192
    sget-boolean v0, Lcom/android/phone/CallStateMonitor;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/CallStateMonitor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "updateCallNotifierRegistrationsAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CallStateMonitor;->unregisterForNotifications()V

    .line 199
    invoke-direct {p0}, Lcom/android/phone/CallStateMonitor;->registerForNotifications()V

    .line 200
    return-void
.end method
