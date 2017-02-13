.class public final Lcom/android/internal/telephony/CallManager;
.super Ljava/lang/Object;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CallManager$3;,
        Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_CALL_WAITING:I = 0x6c

.field private static final EVENT_CALL_WAITING2:I = 0xd0

.field private static final EVENT_CDMA_OTA_STATUS_CHANGE:I = 0x6f

.field private static final EVENT_CDMA_OTA_STATUS_CHANGE2:I = 0xd3

.field private static final EVENT_CIPHER_INDICATION:I = 0x80

.field private static final EVENT_CIPHER_INDICATION2:I = 0xe4

.field private static final EVENT_CRSS_SUPP_SERVICE_NOTIFICATION:I = 0x7b

.field private static final EVENT_CRSS_SUPP_SERVICE_NOTIFICATION2:I = 0xdf

.field private static final EVENT_DISCONNECT:I = 0x64

.field private static final EVENT_DISCONNECT2:I = 0xc8

.field private static final EVENT_DISPLAY_INFO:I = 0x6d

.field private static final EVENT_DISPLAY_INFO2:I = 0xd1

.field private static final EVENT_ECM_TIMER_RESET:I = 0x73

.field private static final EVENT_ECM_TIMER_RESET2:I = 0xd7

.field private static final EVENT_INCOMING_RING:I = 0x68

.field private static final EVENT_INCOMING_RING2:I = 0xcc

.field private static final EVENT_IN_CALL_VOICE_PRIVACY_OFF:I = 0x6b

.field private static final EVENT_IN_CALL_VOICE_PRIVACY_OFF2:I = 0xcf

.field private static final EVENT_IN_CALL_VOICE_PRIVACY_ON:I = 0x6a

.field private static final EVENT_IN_CALL_VOICE_PRIVACY_ON2:I = 0xce

.field private static final EVENT_MMI_COMPLETE:I = 0x72

.field private static final EVENT_MMI_COMPLETE2:I = 0xd6

.field private static final EVENT_MMI_INITIATE:I = 0x71

.field private static final EVENT_MMI_INITIATE2:I = 0xd5

.field private static final EVENT_NEW_RINGING_CONNECTION:I = 0x66

.field private static final EVENT_NEW_RINGING_CONNECTION2:I = 0xca

.field private static final EVENT_POST_DIAL_CHARACTER:I = 0x77

.field private static final EVENT_POST_DIAL_CHARACTER2:I = 0xdb

.field private static final EVENT_PRECISE_CALL_STATE_CHANGED:I = 0x65

.field private static final EVENT_PRECISE_CALL_STATE_CHANGED2:I = 0xc9

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x7f

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE2:I = 0xe3

.field private static final EVENT_RESEND_INCALL_MUTE:I = 0x70

.field private static final EVENT_RESEND_INCALL_MUTE2:I = 0xd4

.field private static final EVENT_RINGBACK_TONE:I = 0x69

.field private static final EVENT_RINGBACK_TONE2:I = 0xcd

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x76

.field private static final EVENT_SERVICE_STATE_CHANGED2:I = 0xda

.field private static final EVENT_SIGNAL_INFO:I = 0x6e

.field private static final EVENT_SIGNAL_INFO2:I = 0xd2

.field private static final EVENT_SPEECH_INFO:I = 0x78

.field private static final EVENT_SPEECH_INFO2:I = 0xdc

.field private static final EVENT_SUBSCRIPTION_INFO_READY:I = 0x74

.field private static final EVENT_SUBSCRIPTION_INFO_READY2:I = 0xd8

.field private static final EVENT_SUPP_SERVICE_FAILED:I = 0x75

.field private static final EVENT_SUPP_SERVICE_FAILED2:I = 0xd9

.field private static final EVENT_SUPP_SERVICE_NOTIFICATION:I = 0x7c

.field private static final EVENT_SUPP_SERVICE_NOTIFICATION2:I = 0xe0

.field private static final EVENT_UNKNOWN_CONNECTION:I = 0x67

.field private static final EVENT_UNKNOWN_CONNECTION2:I = 0xcb

.field private static final EVENT_VOICE_CALL_INCOMING_INDICATION:I = 0x7e

.field private static final EVENT_VOICE_CALL_INCOMING_INDICATION2:I = 0xe2

.field private static final EVENT_VT_REPLACE_DISCONNECT:I = 0x7d

.field private static final EVENT_VT_REPLACE_DISCONNECT2:I = 0xe1

.field private static final EVENT_VT_RING_INFO:I = 0x7a

.field private static final EVENT_VT_RING_INFO2:I = 0xde

.field private static final EVENT_VT_STATUS_INFO:I = 0x79

.field private static final EVENT_VT_STATUS_INFO2:I = 0xdd

.field private static final INSTANCE:Lcom/android/internal/telephony/CallManager;

.field private static final LOG_TAG:Ljava/lang/String; = "CallManager"

.field private static final MAXIMUM_SIM_COUNT:I = 0x4

.field private static final NOTIFICATION_ID_OFFSET:I = 0x64

.field private static final VDBG:Z = true

.field private static mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;


# instance fields
.field private bWaitingForHoldRequest:Z

.field private dtmfRequestIsStarted:Z

.field private espeech_info:[I

.field private hasSetVtPara:Z

.field private m3GSwitchLockForPhoneCall:I

.field private mActiveCallToBeHeld:Lcom/android/internal/telephony/Call;

.field private final mBackgroundCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation
.end field

.field protected final mCallWaitingRegistrants:Landroid/os/RegistrantList;

.field protected final mCallWaitingRegistrants2:Landroid/os/RegistrantList;

.field protected final mCallWaitingRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

.field protected final mCdmaOtaStatusChangeRegistrants2:Landroid/os/RegistrantList;

.field protected final mCdmaOtaStatusChangeRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mCipherIndicationRegistrants:Landroid/os/RegistrantList;

.field protected final mCipherIndicationRegistrants2:Landroid/os/RegistrantList;

.field protected final mCipherIndicationRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mCrssSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

.field protected final mCrssSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

.field protected final mCrssSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

.field private mCurrentAudioMode:I

.field private mDefaultPhone:Lcom/android/internal/telephony/Phone;

.field protected final mDisconnectRegistrants:Landroid/os/RegistrantList;

.field protected final mDisconnectRegistrants2:Landroid/os/RegistrantList;

.field protected final mDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mDisplayInfoRegistrants:Landroid/os/RegistrantList;

.field protected final mDisplayInfoRegistrants2:Landroid/os/RegistrantList;

.field protected final mDisplayInfoRegistrantsGemini:[Landroid/os/RegistrantList;

.field private mDualModemCall:I

.field protected final mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

.field protected final mEcmTimerResetRegistrants2:Landroid/os/RegistrantList;

.field protected final mEcmTimerResetRegistrantsGemini:[Landroid/os/RegistrantList;

.field private final mEmptyConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final mForegroundCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field protected final mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

.field protected final mInCallVoicePrivacyOffRegistrants2:Landroid/os/RegistrantList;

.field protected final mInCallVoicePrivacyOffRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

.field protected final mInCallVoicePrivacyOnRegistrants2:Landroid/os/RegistrantList;

.field protected final mInCallVoicePrivacyOnRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mIncomingRingRegistrants:Landroid/os/RegistrantList;

.field protected final mIncomingRingRegistrants2:Landroid/os/RegistrantList;

.field protected final mIncomingRingRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mMmiCompleteRegistrants:Landroid/os/RegistrantList;

.field protected final mMmiCompleteRegistrants2:Landroid/os/RegistrantList;

.field protected final mMmiCompleteRegistrantsGemini:[Landroid/os/RegistrantList;

.field private mMmiErrorMessageIsReceived:Z

.field protected final mMmiInitiateRegistrants:Landroid/os/RegistrantList;

.field protected final mMmiInitiateRegistrants2:Landroid/os/RegistrantList;

.field protected final mMmiInitiateRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mMmiRegistrants:Landroid/os/RegistrantList;

.field protected final mMmiRegistrants2:Landroid/os/RegistrantList;

.field protected final mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

.field protected final mNewRingingConnectionRegistrants2:Landroid/os/RegistrantList;

.field protected final mNewRingingConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

.field private mPhoneForWaitingHoldRequest:Lcom/android/internal/telephony/Phone;

.field private final mPhones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Phone;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

.field protected final mPostDialCharacterRegistrants2:Landroid/os/RegistrantList;

.field protected final mPostDialCharacterRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

.field protected final mPreciseCallStateRegistrants2:Landroid/os/RegistrantList;

.field protected final mPreciseCallStateRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

.field protected final mResendIncallMuteRegistrants2:Landroid/os/RegistrantList;

.field protected final mResendIncallMuteRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mRingbackToneRegistrants:Landroid/os/RegistrantList;

.field protected final mRingbackToneRegistrants2:Landroid/os/RegistrantList;

.field protected final mRingbackToneRegistrantsGemini:[Landroid/os/RegistrantList;

.field private final mRingingCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation
.end field

.field protected final mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

.field protected final mServiceStateChangedRegistrants2:Landroid/os/RegistrantList;

.field protected final mServiceStateChangedRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mSignalInfoRegistrants:Landroid/os/RegistrantList;

.field protected final mSignalInfoRegistrants2:Landroid/os/RegistrantList;

.field protected final mSignalInfoRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mSpeechInfoRegistrants:Landroid/os/RegistrantList;

.field protected final mSpeechInfoRegistrants2:Landroid/os/RegistrantList;

.field protected final mSpeechInfoRegistrantsGemini:[Landroid/os/RegistrantList;

.field private mSpeedUpAudioForMtCall:Z

.field protected final mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

.field protected final mSubscriptionInfoReadyRegistrants2:Landroid/os/RegistrantList;

.field protected final mSubscriptionInfoReadyRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

.field protected final mSuppServiceFailedRegistrants2:Landroid/os/RegistrantList;

.field protected final mSuppServiceFailedRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

.field protected final mSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

.field protected final mSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

.field protected final mUnknownConnectionRegistrants2:Landroid/os/RegistrantList;

.field protected final mUnknownConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mVtReplaceDisconnectRegistrants:Landroid/os/RegistrantList;

.field protected final mVtReplaceDisconnectRegistrants2:Landroid/os/RegistrantList;

.field protected final mVtReplaceDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mVtRingInfoRegistrants:Landroid/os/RegistrantList;

.field protected final mVtRingInfoRegistrants2:Landroid/os/RegistrantList;

.field protected final mVtRingInfoRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mVtStatusInfoRegistrants:Landroid/os/RegistrantList;

.field protected final mVtStatusInfoRegistrants2:Landroid/os/RegistrantList;

.field protected final mVtStatusInfoRegistrantsGemini:[Landroid/os/RegistrantList;

.field private mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 158
    new-instance v1, Lcom/android/internal/telephony/CallManager;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallManager;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/CallManager;->INSTANCE:Lcom/android/internal/telephony/CallManager;

    .line 418
    :try_start_0
    const-class v1, Lcom/mediatek/common/telephony/IPhoneNumberExt;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/telephony/IPhoneNumberExt;

    sput-object v1, Lcom/android/internal/telephony/CallManager;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 419
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 420
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x4

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mEmptyConnections:Ljava/util/ArrayList;

    .line 178
    iput-boolean v4, p0, Lcom/android/internal/telephony/CallManager;->mSpeedUpAudioForMtCall:Z

    .line 181
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    .line 184
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    .line 187
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    .line 190
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    .line 193
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiRegistrants:Landroid/os/RegistrantList;

    .line 196
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    .line 199
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    .line 202
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    .line 205
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    .line 208
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    .line 211
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    .line 214
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    .line 217
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    .line 220
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    .line 223
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    .line 226
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    .line 229
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    .line 232
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    .line 235
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    .line 238
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    .line 241
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    .line 246
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    .line 249
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrants:Landroid/os/RegistrantList;

    .line 252
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrants:Landroid/os/RegistrantList;

    .line 255
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    .line 258
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    .line 261
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrants:Landroid/os/RegistrantList;

    .line 264
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrants:Landroid/os/RegistrantList;

    .line 267
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants2:Landroid/os/RegistrantList;

    .line 270
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants2:Landroid/os/RegistrantList;

    .line 273
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants2:Landroid/os/RegistrantList;

    .line 276
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants2:Landroid/os/RegistrantList;

    .line 279
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiRegistrants2:Landroid/os/RegistrantList;

    .line 282
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants2:Landroid/os/RegistrantList;

    .line 285
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants2:Landroid/os/RegistrantList;

    .line 288
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants2:Landroid/os/RegistrantList;

    .line 291
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants2:Landroid/os/RegistrantList;

    .line 294
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants2:Landroid/os/RegistrantList;

    .line 297
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants2:Landroid/os/RegistrantList;

    .line 300
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants2:Landroid/os/RegistrantList;

    .line 303
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants2:Landroid/os/RegistrantList;

    .line 306
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants2:Landroid/os/RegistrantList;

    .line 309
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants2:Landroid/os/RegistrantList;

    .line 312
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants2:Landroid/os/RegistrantList;

    .line 315
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants2:Landroid/os/RegistrantList;

    .line 318
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants2:Landroid/os/RegistrantList;

    .line 321
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants2:Landroid/os/RegistrantList;

    .line 324
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants2:Landroid/os/RegistrantList;

    .line 327
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants2:Landroid/os/RegistrantList;

    .line 330
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrants2:Landroid/os/RegistrantList;

    .line 333
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrants2:Landroid/os/RegistrantList;

    .line 336
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrants2:Landroid/os/RegistrantList;

    .line 339
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

    .line 342
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

    .line 345
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrants2:Landroid/os/RegistrantList;

    .line 348
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrants2:Landroid/os/RegistrantList;

    .line 352
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 353
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 354
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 355
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 356
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 357
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 358
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 359
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 360
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 361
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 362
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 363
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 364
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 365
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 366
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 367
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 368
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 369
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 370
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 371
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 372
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 373
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 374
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 375
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 376
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 377
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 378
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 382
    iput-boolean v4, p0, Lcom/android/internal/telephony/CallManager;->hasSetVtPara:Z

    .line 385
    iput v4, p0, Lcom/android/internal/telephony/CallManager;->mDualModemCall:I

    .line 392
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->espeech_info:[I

    .line 395
    iput-boolean v4, p0, Lcom/android/internal/telephony/CallManager;->dtmfRequestIsStarted:Z

    .line 401
    iput-boolean v4, p0, Lcom/android/internal/telephony/CallManager;->bWaitingForHoldRequest:Z

    .line 402
    iput-object v3, p0, Lcom/android/internal/telephony/CallManager;->mActiveCallToBeHeld:Lcom/android/internal/telephony/Call;

    .line 403
    iput-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhoneForWaitingHoldRequest:Lcom/android/internal/telephony/Phone;

    .line 404
    sget-object v2, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;->NONE:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    .line 407
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/CallManager;->mCurrentAudioMode:I

    .line 410
    iput-boolean v4, p0, Lcom/android/internal/telephony/CallManager;->mMmiErrorMessageIsReceived:Z

    .line 2487
    new-instance v2, Lcom/android/internal/telephony/CallManager$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/CallManager$1;-><init>(Lcom/android/internal/telephony/CallManager;)V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    .line 425
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    .line 426
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    .line 427
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    .line 428
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    .line 429
    iput-object v3, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 431
    const-string v2, "CallManager"

    const-string v3, "Initiate registrants array"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 434
    .local v0, "count":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 435
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 436
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 437
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 438
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 439
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 440
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 441
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 442
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 443
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 444
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 445
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 446
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 447
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 448
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 449
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 450
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 451
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 452
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 453
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 454
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 455
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 456
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 457
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 458
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 459
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 460
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 461
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 462
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->espeech_info:[I

    aput v4, v2, v1

    .line 434
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 433
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    goto/16 :goto_0

    .line 465
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->handle3GSwitchLock()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/CallManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->clearEspeechInfo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/CallManager;Landroid/os/Message;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->handleSpeechInfo(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/CallManager;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->setVTSpeechCall(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/CallManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->checkIfExistsFollowingAction()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/CallManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;
    .param p1, "x1"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->setAudioMode(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/CallManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->hasMoreThanOneRingingCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/CallManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiErrorMessageIsReceived:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/CallManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/internal/telephony/CallManager;->mMmiErrorMessageIsReceived:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;)Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;
    .param p1, "x1"    # Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/internal/telephony/CallManager;->mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/CallManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/internal/telephony/CallManager;->bWaitingForHoldRequest:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/CallManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 82
    iget v0, p0, Lcom/android/internal/telephony/CallManager;->mCurrentAudioMode:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/CallManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/android/internal/telephony/CallManager;->mCurrentAudioMode:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/CallManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static addConferenceMember(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 5286
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private canDial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z
    .locals 17
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dialString"    # Ljava/lang/String;

    .prologue
    .line 1493
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getState()I

    move-result v13

    .line 1494
    .local v13, "serviceState":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v11

    .line 1495
    .local v11, "hasRingingCall":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v9

    .line 1496
    .local v9, "hasActiveCall":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v10

    .line 1497
    .local v10, "hasHoldingCall":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallManager;->isInCallMmiCommands(Ljava/lang/String;)Z

    move-result v6

    .line 1499
    .local v6, "bIsInCallMmiCommands":Z
    if-eqz v9, :cond_7

    if-eqz v10, :cond_7

    const/4 v4, 0x1

    .line 1506
    .local v4, "allLinesTaken":Z
    :goto_0
    if-eqz v6, :cond_0

    if-eqz v9, :cond_0

    .line 1507
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 1508
    .local v3, "activePhone":Lcom/android/internal/telephony/Phone;
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    .line 1509
    .local v7, "dialPhone":Lcom/android/internal/telephony/Phone;
    if-ne v7, v3, :cond_8

    const/4 v6, 0x1

    .line 1517
    .end local v3    # "activePhone":Lcom/android/internal/telephony/Phone;
    .end local v7    # "dialPhone":Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    if-eqz v6, :cond_1

    .line 1518
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v15

    if-eq v14, v15, :cond_1

    .line 1519
    const/4 v6, 0x0

    .line 1523
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    .line 1526
    .local v8, "fgCallState":Lcom/android/internal/telephony/Call$State;
    const/4 v5, 0x0

    .line 1528
    .local v5, "bECCExists":Z
    if-eqz v9, :cond_2

    .line 1529
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1530
    .local v2, "activeCallAddress":Ljava/lang/String;
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_9

    const/4 v5, 0x1

    .line 1534
    .end local v2    # "activeCallAddress":Ljava/lang/String;
    :cond_2
    :goto_2
    if-nez v5, :cond_a

    const/4 v14, 0x3

    if-eq v13, v14, :cond_a

    if-eqz v11, :cond_3

    if-eqz v6, :cond_a

    :cond_3
    if-eqz v4, :cond_4

    if-eqz v6, :cond_a

    :cond_4
    sget-object v14, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v14, :cond_5

    sget-object v14, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v14, :cond_5

    sget-object v14, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v14, :cond_5

    sget-object v14, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v14, :cond_a

    if-eqz v6, :cond_a

    :cond_5
    const/4 v12, 0x1

    .line 1543
    .local v12, "result":Z
    :goto_3
    if-nez v12, :cond_6

    .line 1544
    const-string v14, "CallManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "canDial serviceState="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " hasRingingCall="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " hasActiveCall="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " hasHoldingCall="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " allLinesTaken="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " fgCallState="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " bECCExists="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    :cond_6
    return v12

    .line 1499
    .end local v4    # "allLinesTaken":Z
    .end local v5    # "bECCExists":Z
    .end local v8    # "fgCallState":Lcom/android/internal/telephony/Call$State;
    .end local v12    # "result":Z
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1509
    .restart local v3    # "activePhone":Lcom/android/internal/telephony/Phone;
    .restart local v4    # "allLinesTaken":Z
    .restart local v7    # "dialPhone":Lcom/android/internal/telephony/Phone;
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1530
    .end local v3    # "activePhone":Lcom/android/internal/telephony/Phone;
    .end local v7    # "dialPhone":Lcom/android/internal/telephony/Phone;
    .restart local v2    # "activeCallAddress":Ljava/lang/String;
    .restart local v5    # "bECCExists":Z
    .restart local v8    # "fgCallState":Lcom/android/internal/telephony/Call$State;
    :cond_9
    const/4 v5, 0x0

    goto :goto_2

    .line 1534
    .end local v2    # "activeCallAddress":Ljava/lang/String;
    :cond_a
    const/4 v12, 0x0

    goto :goto_3
.end method

.method private checkIfExistsFollowingAction()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 5164
    const/4 v0, 0x0

    .line 5165
    .local v0, "result":Z
    const-string v1, "CallManager"

    const-string v2, "checkIfExistsFollowingAction begin"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5166
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mActiveCallToBeHeld.getState() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mActiveCallToBeHeld:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5167
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWaitingReasonForHold = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5168
    iget-boolean v1, p0, Lcom/android/internal/telephony/CallManager;->bWaitingForHoldRequest:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mActiveCallToBeHeld:Lcom/android/internal/telephony/Call;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mActiveCallToBeHeld:Lcom/android/internal/telephony/Call;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    .line 5171
    :cond_0
    const/4 v0, 0x1

    .line 5172
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/CallManager;->bWaitingForHoldRequest:Z

    .line 5173
    sget-object v1, Lcom/android/internal/telephony/CallManager$3;->$SwitchMap$com$android$internal$telephony$CallManager$WaitingReasonForHold:[I

    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 5183
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;->NONE:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    .line 5185
    :cond_1
    const-string v1, "CallManager"

    const-string v2, "checkIfExistsFollowingAction end"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5186
    return v0

    .line 5175
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->setAudioModeEarlierInAcceptCall()V

    .line 5176
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhoneForWaitingHoldRequest:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->acceptCall()V

    goto :goto_0

    .line 5180
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhoneForWaitingHoldRequest:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto :goto_0

    .line 5173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private clearEspeechInfo()Z
    .locals 9

    .prologue
    const/4 v8, 0x4

    .line 5116
    const/4 v4, 0x0

    .line 5117
    .local v4, "isCleared":Z
    const-string v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[clearEspeechInfo] state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5119
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v8, :cond_0

    .line 5120
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->espeech_info:[I

    aget v5, v5, v3

    if-eqz v5, :cond_3

    .line 5124
    :cond_0
    if-ne v3, v8, :cond_1

    .line 5125
    const-string v5, "CallManager"

    const-string v6, "All espeech is 0"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5128
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v5, v6, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->isServiceStatePowerOff()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 5130
    :cond_2
    const/4 v4, 0x1

    .line 5131
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v8, :cond_4

    .line 5132
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->espeech_info:[I

    const/4 v6, 0x0

    aput v6, v5, v3

    .line 5131
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5119
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5135
    :cond_4
    const/4 v2, 0x0

    .line 5136
    .local v2, "curAudioMode":I
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 5138
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_5

    .line 5139
    const-string v5, "audio"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5140
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    .line 5144
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_5
    const-string v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[clearEspeechInfo] skip set audio mode to normal, current audio mode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5155
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "curAudioMode":I
    :cond_6
    return v4
.end method

.method private getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 808
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 809
    .local v0, "defaultPhone":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0
.end method

.method private getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .line 2447
    .local p1, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2448
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2452
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call;
    .locals 3
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;",
            "Lcom/android/internal/telephony/Call$State;",
            ")",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .line 2459
    .local p1, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2460
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 2464
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .line 2316
    .local p1, "calls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    const/4 v2, 0x0

    .line 2317
    .local v2, "result":Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2318
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2321
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 2330
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :goto_1
    return-object v0

    .line 2324
    .restart local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_1
    move-object v2, v0

    goto :goto_0

    .line 2326
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    .line 2327
    if-nez v2, :cond_0

    move-object v2, v0

    goto :goto_0

    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_3
    move-object v0, v2

    .line 2330
    goto :goto_1
.end method

.method public static getInstance()Lcom/android/internal/telephony/CallManager;
    .locals 1

    .prologue
    .line 472
    sget-object v0, Lcom/android/internal/telephony/CallManager;->INSTANCE:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method private getNewAudioModeIfMDSwap(I)I
    .locals 5
    .param p1, "oldMode"    # I

    .prologue
    const/4 v1, 0x5

    const/4 v4, 0x4

    const/4 v2, 0x2

    .line 3148
    move v0, p1

    .line 3173
    .local v0, "newMode":I
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eq p1, v2, :cond_0

    if-eq p1, v4, :cond_0

    if-ne p1, v1, :cond_1

    .line 3177
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3178
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v3

    if-nez v3, :cond_3

    .line 3179
    if-ne p1, v2, :cond_2

    move v0, v1

    .line 3201
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v2

    .line 3179
    goto :goto_0

    .line 3181
    :cond_3
    if-ne p1, v4, :cond_1

    .line 3182
    const/4 v0, 0x5

    goto :goto_0

    .line 3185
    :cond_4
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 484
    instance-of v0, p0, Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v0, :cond_0

    .line 485
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    .line 487
    .end local p0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    return-object p0
.end method

.method private getRegistrantsArrayIndex(I)I
    .locals 2
    .param p1, "simId"    # I

    .prologue
    .line 3942
    add-int/lit8 v0, p1, 0x0

    .line 3943
    .local v0, "index":I
    if-ltz v0, :cond_0

    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 3950
    .end local v0    # "index":I
    :goto_0
    return v0

    .restart local v0    # "index":I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private handle3GSwitchLock()V
    .locals 6

    .prologue
    .line 4991
    const-string v3, "phoneEx"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v1

    .line 4992
    .local v1, "iTelephonyEx":Lcom/mediatek/common/telephony/ITelephonyEx;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    .line 4994
    .local v2, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_1

    invoke-interface {v1}, Lcom/mediatek/common/telephony/ITelephonyEx;->is3GSwitchLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4995
    const-string v3, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone call IDLE, release 3G switch lock ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/CallManager;->m3GSwitchLockForPhoneCall:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4996
    iget v3, p0, Lcom/android/internal/telephony/CallManager;->m3GSwitchLockForPhoneCall:I

    invoke-interface {v1, v3}, Lcom/mediatek/common/telephony/ITelephonyEx;->release3GSwitchLock(I)Z

    .line 4997
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/telephony/CallManager;->m3GSwitchLockForPhoneCall:I

    .line 5007
    :cond_0
    :goto_0
    return-void

    .line 4998
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_0

    invoke-interface {v1}, Lcom/mediatek/common/telephony/ITelephonyEx;->is3GSwitchLocked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4999
    invoke-interface {v1}, Lcom/mediatek/common/telephony/ITelephonyEx;->aquire3GSwitchLock()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/CallManager;->m3GSwitchLockForPhoneCall:I

    .line 5000
    const-string v3, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone call not IDLE, acquire 3G switch lock ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/CallManager;->m3GSwitchLockForPhoneCall:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5002
    :catch_0
    move-exception v0

    .line 5003
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleSpeechInfo(Landroid/os/Message;)Z
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 5017
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 5018
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [I

    check-cast v13, [I

    const/4 v14, 0x0

    aget v5, v13, v14

    .line 5019
    .local v5, "infoType":I
    const/4 v11, 0x1

    .line 5020
    .local v11, "result":Z
    packed-switch v5, :pswitch_data_0

    .line 5081
    const/4 v11, 0x0

    .line 5084
    :cond_0
    :goto_0
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x78

    div-int/lit8 v4, v13, 0x64

    .line 5085
    .local v4, "index":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v14, v13, v4

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 5086
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 5088
    return v11

    .line 5022
    .end local v4    # "index":I
    :pswitch_0
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x78

    div-int/lit8 v4, v13, 0x64

    .line 5024
    .restart local v4    # "index":I
    const/4 v4, 0x0

    .line 5026
    if-nez v4, :cond_1

    const/4 v8, 0x1

    .line 5027
    .local v8, "oppositeIndex":I
    :goto_1
    if-nez v4, :cond_2

    const/4 v9, 0x4

    .line 5029
    .local v9, "oppositeMode":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager;->espeech_info:[I

    const/4 v14, 0x0

    aput v14, v13, v4

    .line 5030
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager;->espeech_info:[I

    aget v13, v13, v8

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 5031
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/CallManager;->setAudioMode(I)V

    goto :goto_0

    .line 5026
    .end local v8    # "oppositeIndex":I
    .end local v9    # "oppositeMode":I
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 5027
    .restart local v8    # "oppositeIndex":I
    :cond_2
    const/4 v9, 0x2

    goto :goto_2

    .line 5042
    .end local v4    # "index":I
    .end local v8    # "oppositeIndex":I
    :pswitch_1
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x78

    div-int/lit8 v7, v13, 0x64

    .line 5044
    .local v7, "newDualModemCall":I
    const/4 v7, 0x0

    .line 5047
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager;->espeech_info:[I

    const/4 v14, 0x1

    aput v14, v13, v7

    .line 5050
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/CallManager;->mDualModemCall:I

    if-eq v7, v13, :cond_3

    .line 5055
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/CallManager;->mDualModemCall:I

    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/internal/telephony/CallManager;->setAudioModeDualModem(II)V

    goto :goto_0

    .line 5060
    .end local v7    # "newDualModemCall":I
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 5061
    .local v3, "context":Landroid/content/Context;
    const-string v13, "audio"

    invoke-virtual {v3, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 5062
    .local v2, "audioManager":Landroid/media/AudioManager;
    const/16 v13, 0xdc

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    if-ne v13, v14, :cond_4

    const/4 v6, 0x2

    .line 5063
    .local v6, "modem":I
    :goto_3
    const/4 v13, 0x2

    if-ne v5, v13, :cond_5

    const/4 v12, 0x1

    .line 5075
    .local v12, "sid":I
    :goto_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SetModem"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "GenerateSID="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 5076
    .local v10, "para":Ljava/lang/String;
    invoke-virtual {v2, v10}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 5077
    const-string v13, "CallManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "para = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5062
    .end local v6    # "modem":I
    .end local v10    # "para":Ljava/lang/String;
    .end local v12    # "sid":I
    :cond_4
    const/4 v6, 0x1

    goto :goto_3

    .line 5063
    .restart local v6    # "modem":I
    :cond_5
    const/4 v12, 0x0

    goto :goto_4

    .line 5020
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private hasMoreThanOneRingingCall()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2481
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getRingingCallCount()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 2484
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEspeechTurnedOff(I)Z
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5098
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    move v0, v1

    .line 5099
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->espeech_info:[I

    aget v3, v3, v0

    if-nez v3, :cond_1

    :goto_1
    return v2

    .end local v0    # "i":I
    :cond_0
    move v0, v2

    .line 5098
    goto :goto_0

    .restart local v0    # "i":I
    :cond_1
    move v2, v1

    .line 5099
    goto :goto_1
.end method

.method private isInCallMmiCommands(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 4958
    const/4 v1, 0x0

    .line 4959
    .local v1, "result":Z
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 4961
    .local v0, "ch":C
    packed-switch v0, :pswitch_data_0

    .line 4982
    :cond_0
    :goto_0
    return v1

    .line 4966
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 4967
    const/4 v1, 0x1

    goto :goto_0

    .line 4973
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 4974
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 4961
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .param p0, "p1"    # Lcom/android/internal/telephony/Phone;
    .param p1, "p2"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 512
    invoke-static {p0}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isServiceStatePowerOff()Z
    .locals 6

    .prologue
    .line 5222
    const/4 v0, 0x1

    .line 5224
    .local v0, "bIsPowerOff":Z
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 5225
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    .line 5226
    :goto_0
    if-nez v0, :cond_0

    .line 5231
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    const-string v3, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isServiceStatePowerOff]bIsPowerOff = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5232
    return v0

    .line 5225
    .restart local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyDisconnectedForSipCall(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 5239
    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 5241
    .local v0, "basePhone":Lcom/android/internal/telephony/Phone;
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_0

    .line 5242
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->hangupAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5247
    :cond_0
    :goto_0
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_1

    .line 5248
    const-string v2, "CallManager"

    const-string v3, "notifyDisconnectedForSipCall - foreground call"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5249
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/CallManager;->notifyDisconnectedMessageToApp(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V

    .line 5251
    :cond_1
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_2

    .line 5252
    const-string v2, "CallManager"

    const-string v3, "notifyDisconnectedForSipCall - background call"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5253
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/CallManager;->notifyDisconnectedMessageToApp(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V

    .line 5255
    :cond_2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_3

    .line 5256
    const-string v2, "CallManager"

    const-string v3, "notifyDisconnectedForSipCall - ringingground call"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5257
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/CallManager;->notifyDisconnectedMessageToApp(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V

    .line 5259
    :cond_3
    return-void

    .line 5244
    :catch_0
    move-exception v1

    .line 5245
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CallManager"

    const-string v3, "[notifyDisconnectedForSipCall]Failed to hang up all SIP calls!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyDisconnectedMessageToApp(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 5266
    :try_start_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 5267
    .local v1, "conn":Lcom/android/internal/telephony/Connection;
    const-string v4, "CallManager"

    const-string v5, "notifyDisconnectedMessageToApp - notifyDisconnectP"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5268
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone;

    move-object v4, v0

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/sip/SipPhone;->notifyDisconnectP(Lcom/android/internal/telephony/Connection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5270
    .end local v1    # "conn":Lcom/android/internal/telephony/Connection;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 5271
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "CallManager"

    const-string v5, "[notifyDisconnectedMessageToApp]Failed to notify disconnect messsage!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5273
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public static registerForVoLteConferenceCallNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 5280
    return-void
.end method

.method private registerOnePhone(Lcom/android/internal/telephony/Phone;)Z
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 582
    const/4 v1, 0x0

    .line 583
    .local v1, "result":Z
    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 584
    .local v0, "basePhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 586
    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BSPPackage]registerPhone("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    const/4 v1, 0x1

    .line 595
    :cond_0
    return v1
.end method

.method private registerSinglePhoneStates(Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 962
    const/16 v0, 0x64

    .line 964
    .local v0, "eventDifference":I
    instance-of v2, p1, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v2, :cond_3

    .line 965
    const/4 v1, 0x0

    .line 980
    .local v1, "simId":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x65

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 981
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x64

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 982
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x66

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 983
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x67

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 984
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x68

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 985
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x69

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 986
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x6a

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 987
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x6b

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 988
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x6d

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 989
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x6e

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 990
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x70

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 991
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x71

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 992
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x72

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 993
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x75

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 994
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x76

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 996
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x78

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 997
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x79

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForVtStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 998
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x7a

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForVtRingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 999
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x7b

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1000
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x7c

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1001
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x7d

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForVtReplaceDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1002
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x7e

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForVoiceCallIncomingIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1003
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x7f

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForRadioOffOrNotAvailableNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1004
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit16 v3, v3, 0x80

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForCipherIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1007
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 1009
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x77

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1013
    :cond_1
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 1014
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x6f

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1015
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x74

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1016
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x6c

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1017
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x73

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1019
    :cond_2
    return-void

    .line 968
    .end local v1    # "simId":I
    :cond_3
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v1

    .restart local v1    # "simId":I
    goto/16 :goto_0
.end method

.method private setAudioMode(I)V
    .locals 14
    .param p1, "mode"    # I

    .prologue
    const/4 v13, 0x0

    const/4 v8, 0x2

    const/4 v12, 0x1

    .line 2919
    const-string v9, "CallManager"

    const-string v10, "setAudioMode enter..."

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2921
    .local v2, "context":Landroid/content/Context;
    const/4 v6, 0x0

    .line 2924
    .local v6, "isVTCall":Z
    if-nez v2, :cond_1

    .line 3143
    :cond_0
    :goto_0
    return-void

    .line 2925
    :cond_1
    const-string v9, "audio"

    invoke-virtual {v2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2926
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    .line 2927
    .local v3, "curAudioMode":I
    const-string v9, "CallManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set mode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->getNewAudioModeIfMDSwap(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", current mode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->getNewAudioModeIfMDSwap(I)I

    move-result v9

    if-eq v3, v9, :cond_8

    .line 2933
    packed-switch p1, :pswitch_data_0

    .line 3015
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    .line 3016
    .local v4, "fgIsAlive":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    .line 3019
    .local v1, "bgIsAlive":Z
    if-nez p1, :cond_5

    if-nez v4, :cond_2

    if-eqz v1, :cond_5

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->isServiceStatePowerOff()Z

    move-result v9

    if-nez v9, :cond_5

    .line 3023
    const-string v9, "CallManager"

    const-string v10, "Do not need to switch normal mode for held call"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2937
    .end local v1    # "bgIsAlive":Z
    .end local v4    # "fgIsAlive":Z
    :pswitch_0
    if-eqz v3, :cond_3

    .line 2938
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v9

    if-ne v9, v12, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v9

    if-nez v9, :cond_4

    .line 2939
    const-string v9, "CallManager"

    const-string v10, "no fg/bg call but ring call is exist, allow to set ringtone mode"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    :cond_3
    const-string v9, "CallManager"

    const-string v10, "requestAudioFocus on STREAM_RING"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2950
    invoke-virtual {v0, v8, v8}, Landroid/media/AudioManager;->requestAudioFocusForCall(II)V

    goto :goto_1

    .line 2941
    :cond_4
    const-string v9, "CallManager"

    const-string v10, "there is fg or bg call exist, we don\'t allow to set ringtone mode"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2983
    :pswitch_1
    const-string v9, "CallManager"

    const-string v10, "requestAudioFocus on STREAM_VOICE_CALL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2984
    invoke-virtual {v0, v13, v8}, Landroid/media/AudioManager;->requestAudioFocusForCall(II)V

    goto :goto_1

    .line 3047
    .restart local v1    # "bgIsAlive":Z
    .restart local v4    # "fgIsAlive":Z
    :cond_5
    const-string v5, ""

    .line 3048
    .local v5, "headsetState":Ljava/lang/String;
    if-le p1, v12, :cond_9

    .line 3056
    .local v8, "value":I
    :goto_2
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lcom/android/internal/telephony/CallManager$2;

    invoke-direct {v10, p0, v8}, Lcom/android/internal/telephony/CallManager$2;-><init>(Lcom/android/internal/telephony/CallManager;I)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 3097
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->getNewAudioModeIfMDSwap(I)I

    move-result v7

    .line 3099
    .local v7, "newMode":I
    const-string v9, "CallManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set AudioManager mode "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3102
    if-ne v12, p1, :cond_6

    .line 3103
    iget-boolean v9, p0, Lcom/android/internal/telephony/CallManager;->mSpeedUpAudioForMtCall:Z

    if-eqz v9, :cond_6

    .line 3104
    const/4 v7, 0x2

    .line 3126
    :cond_6
    if-eq v3, v7, :cond_7

    .line 3127
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->setMode(I)V

    .line 3131
    :cond_7
    if-eq v12, v7, :cond_8

    .line 3133
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/telephony/CallManager;->mCurrentAudioMode:I

    .line 3134
    iput-boolean v13, p0, Lcom/android/internal/telephony/CallManager;->mSpeedUpAudioForMtCall:Z

    .line 3138
    .end local v1    # "bgIsAlive":Z
    .end local v4    # "fgIsAlive":Z
    .end local v5    # "headsetState":Ljava/lang/String;
    .end local v7    # "newMode":I
    .end local v8    # "value":I
    :cond_8
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v9, v10, :cond_0

    .line 3139
    const-string v9, "CallManager"

    const-string v10, "abandonAudioFocus"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3141
    invoke-virtual {v0}, Landroid/media/AudioManager;->abandonAudioFocusForCall()V

    goto/16 :goto_0

    .restart local v1    # "bgIsAlive":Z
    .restart local v4    # "fgIsAlive":Z
    .restart local v5    # "headsetState":Ljava/lang/String;
    :cond_9
    move v8, p1

    .line 3048
    goto :goto_2

    .line 2933
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setAudioModeDualModem(II)V
    .locals 3
    .param p1, "devId"    # I
    .param p2, "mode"    # I

    .prologue
    .line 3214
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3215
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_0

    .line 3234
    :goto_0
    return-void

    .line 3216
    :cond_0
    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3233
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->setAudioMode(I)V

    goto :goto_0
.end method

.method private setAudioModeEarlierInAcceptCall()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    .line 1168
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1169
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_1

    .line 1170
    const-string v4, "CallManager"

    const-string v5, "Speedup Audio Path enhancement: Context is null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    :cond_0
    :goto_0
    return-void

    .line 1171
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110056

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1173
    const-string v5, "CallManager"

    const-string v6, "Speedup Audio Path enhancement"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    const-string v5, "audio"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1176
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    .line 1177
    .local v2, "currMode":I
    if-eq v2, v8, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    instance-of v5, v5, Lcom/android/internal/telephony/sip/SipPhone;

    if-nez v5, :cond_0

    .line 1180
    const-string v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAudioMode Setting audio mode from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v5

    if-ne v5, v4, :cond_3

    move v3, v4

    .line 1184
    .local v3, "newDualModemCall":I
    :goto_1
    iget v5, p0, Lcom/android/internal/telephony/CallManager;->mDualModemCall:I

    if-eq v3, v5, :cond_2

    .line 1185
    iput v3, p0, Lcom/android/internal/telephony/CallManager;->mDualModemCall:I

    .line 1186
    const-string v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set mDualModemCall = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/CallManager;->mDualModemCall:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :cond_2
    iget v5, p0, Lcom/android/internal/telephony/CallManager;->mDualModemCall:I

    invoke-direct {p0, v5, v8}, Lcom/android/internal/telephony/CallManager;->setAudioModeDualModem(II)V

    .line 1189
    iput-boolean v4, p0, Lcom/android/internal/telephony/CallManager;->mSpeedUpAudioForMtCall:Z

    goto :goto_0

    .line 1183
    .end local v3    # "newDualModemCall":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private setVTSpeechCall(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 5198
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v1, v2, v0

    .line 5199
    .local v1, "vtStatus":I
    if-nez v1, :cond_0

    move v0, v3

    .line 5202
    .local v0, "flag":I
    :cond_0
    if-ne v0, v3, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/telephony/CallManager;->hasSetVtPara:Z

    if-nez v2, :cond_2

    :cond_1
    if-nez v0, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/telephony/CallManager;->hasSetVtPara:Z

    if-nez v2, :cond_2

    .line 5215
    :cond_2
    return-void
.end method

.method public static unregisterForVoLteConferenceCallNotification(Landroid/os/Handler;)V
    .locals 0
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 5283
    return-void
.end method

.method private unregisterSinglePhoneStates(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 1022
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 1023
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 1024
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 1025
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 1026
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 1027
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 1028
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 1029
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 1030
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 1031
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 1032
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 1033
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 1034
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 1035
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 1036
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 1038
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForSpeechInfo(Landroid/os/Handler;)V

    .line 1039
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForVtStatusInfo(Landroid/os/Handler;)V

    .line 1040
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForVtRingInfo(Landroid/os/Handler;)V

    .line 1041
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V

    .line 1042
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 1043
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForVtReplaceDisconnect(Landroid/os/Handler;)V

    .line 1044
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForVoiceCallIncomingIndication(Landroid/os/Handler;)V

    .line 1045
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForRadioOffOrNotAvailableNotification(Landroid/os/Handler;)V

    .line 1046
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForCipherIndication(Landroid/os/Handler;)V

    .line 1050
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1052
    :cond_0
    const/16 v0, 0x77

    invoke-interface {p1, v3, v0, v3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1056
    :cond_1
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1057
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 1058
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 1059
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 1060
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 1062
    :cond_2
    return-void
.end method


# virtual methods
.method public acceptCall(Lcom/android/internal/telephony/Call;)V
    .locals 9
    .param p1, "ringingCall"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1078
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 1081
    .local v3, "ringingPhone":Lcom/android/internal/telephony/Phone;
    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "acceptCall("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    const-string v6, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1086
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1087
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-nez v6, :cond_3

    move v2, v5

    .line 1088
    .local v2, "hasBgCall":Z
    :goto_0
    if-ne v0, v3, :cond_0

    move v4, v5

    .line 1091
    .local v4, "sameChannel":Z
    :cond_0
    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasBgCall: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "sameChannel:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 1096
    .local v1, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v6

    iput v6, p0, Lcom/android/internal/telephony/CallManager;->mCurrentAudioMode:I

    .line 1098
    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    .line 1101
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupActiveCall()V

    .line 1156
    .end local v0    # "activePhone":Lcom/android/internal/telephony/Phone;
    .end local v1    # "audioManager":Landroid/media/AudioManager;
    .end local v2    # "hasBgCall":Z
    .end local v4    # "sameChannel":Z
    :cond_1
    :goto_1
    iget-boolean v5, p0, Lcom/android/internal/telephony/CallManager;->bWaitingForHoldRequest:Z

    if-nez v5, :cond_2

    .line 1157
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->setAudioModeEarlierInAcceptCall()V

    .line 1158
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->acceptCall()V

    .line 1162
    :cond_2
    const-string v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "End acceptCall("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    const-string v5, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    return-void

    .restart local v0    # "activePhone":Lcom/android/internal/telephony/Phone;
    :cond_3
    move v2, v4

    .line 1087
    goto :goto_0

    .line 1102
    .restart local v1    # "audioManager":Landroid/media/AudioManager;
    .restart local v2    # "hasBgCall":Z
    .restart local v4    # "sameChannel":Z
    :cond_4
    if-nez v4, :cond_8

    if-nez v2, :cond_8

    .line 1104
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1105
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->hangup()V

    goto :goto_1

    .line 1109
    :cond_5
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1110
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 1114
    :cond_6
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_7

    .line 1116
    const-string v6, "CallManager"

    const-string v7, "Accept incoming call after the active call is held successfully."

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    iput-boolean v5, p0, Lcom/android/internal/telephony/CallManager;->bWaitingForHoldRequest:Z

    .line 1118
    sget-object v5, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;->ACCEPT_CALL:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    iput-object v5, p0, Lcom/android/internal/telephony/CallManager;->mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    .line 1119
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/CallManager;->mActiveCallToBeHeld:Lcom/android/internal/telephony/Call;

    .line 1120
    iput-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhoneForWaitingHoldRequest:Lcom/android/internal/telephony/Phone;

    .line 1124
    :cond_7
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto :goto_1

    .line 1127
    :cond_8
    if-nez v4, :cond_1

    if-eqz v2, :cond_1

    .line 1130
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupActiveCall()V

    goto/16 :goto_1
.end method

.method public acceptVtCallWithVoiceOnly(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .param p1, "ringingCall"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 4937
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acceptVtCallWithVoiceOnly("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4938
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4941
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4944
    .local v0, "ringingPhone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->acceptVtCallWithVoiceOnly()V

    .line 4947
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End acceptVtCallWithVoiceOnly("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4948
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4951
    return-void
.end method

.method public canConference(Lcom/android/internal/telephony/Call;)Z
    .locals 4
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 1332
    const/4 v0, 0x0

    .line 1333
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 1335
    .local v1, "heldPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1336
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1339
    :cond_0
    if-eqz p1, :cond_1

    .line 1340
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1344
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1345
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1347
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public canTransfer(Lcom/android/internal/telephony/Call;)Z
    .locals 3
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 1563
    const/4 v0, 0x0

    .line 1564
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 1566
    .local v1, "heldPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1567
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1570
    :cond_0
    if-eqz p1, :cond_1

    .line 1571
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1574
    :cond_1
    if-ne v1, v0, :cond_2

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public clearDisconnected()V
    .locals 3

    .prologue
    .line 1477
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 1478
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    goto :goto_0

    .line 1480
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    return-void
.end method

.method public conference(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1364
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "conference("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1370
    .local v0, "fgPhone":Lcom/android/internal/telephony/Phone;
    instance-of v1, v0, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v1, :cond_0

    .line 1371
    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone;

    .end local v0    # "fgPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->conference(Lcom/android/internal/telephony/Call;)V

    .line 1379
    :goto_0
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End conference("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    return-void

    .line 1372
    .restart local v0    # "fgPhone":Lcom/android/internal/telephony/Phone;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->canConference(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1373
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->conference()V

    goto :goto_0

    .line 1375
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "Can\'t conference foreground and selected background call"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 13
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x2

    const/4 v7, 0x1

    .line 1396
    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1400
    .local v1, "basePhone":Lcom/android/internal/telephony/Phone;
    const-string v9, "CallManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " dial("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    const-string v9, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->canDial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1406
    new-instance v7, Lcom/android/internal/telephony/CallStateException;

    const-string v8, "cannot dial in current state"

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1410
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1411
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1412
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v9

    if-nez v9, :cond_4

    move v4, v7

    .line 1415
    .local v4, "hasBgCall":Z
    :goto_0
    const-string v9, "CallManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hasBgCall: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " sameChannel:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-ne v0, v1, :cond_1

    move v8, v7

    :cond_1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    if-eq v0, v1, :cond_3

    .line 1420
    const/4 v5, 0x0

    .line 1421
    .local v5, "isUssdNumber":Z
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v12, :cond_2

    .line 1422
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    if-ne v8, v7, :cond_5

    .line 1423
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(I)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .line 1424
    .local v2, "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const-string v7, "CallManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[UiccCardApplication]cardApp = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v1

    .line 1425
    check-cast v7, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-static {p2, v7, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isUssdNumber(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z

    move-result v5

    .line 1434
    .end local v2    # "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_2
    :goto_1
    if-nez v5, :cond_3

    .line 1436
    if-eqz v4, :cond_6

    .line 1437
    const-string v7, "CallManager"

    const-string v8, "Hangup"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupActiveCall()V

    .line 1449
    .end local v0    # "activePhone":Lcom/android/internal/telephony/Phone;
    .end local v4    # "hasBgCall":Z
    .end local v5    # "isUssdNumber":Z
    :cond_3
    :goto_2
    invoke-interface {v1, p2}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v6

    .line 1452
    .local v6, "result":Lcom/android/internal/telephony/Connection;
    const-string v7, "CallManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "End dial("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    const-string v7, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    return-object v6

    .end local v6    # "result":Lcom/android/internal/telephony/Connection;
    .restart local v0    # "activePhone":Lcom/android/internal/telephony/Phone;
    :cond_4
    move v4, v8

    .line 1412
    goto/16 :goto_0

    .line 1426
    .restart local v4    # "hasBgCall":Z
    .restart local v5    # "isUssdNumber":Z
    :cond_5
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    if-ne v7, v12, :cond_2

    .line 1427
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v7

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(I)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .restart local v2    # "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    move-object v7, v1

    .line 1428
    check-cast v7, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-static {p2, v7, v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/cdma/CdmaMmiCode;

    move-result-object v3

    .line 1429
    .local v3, "cdmaMmiCode":Lcom/android/internal/telephony/cdma/CdmaMmiCode;
    if-eqz v3, :cond_2

    .line 1430
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isUssdRequest()Z

    move-result v5

    goto :goto_1

    .line 1442
    .end local v2    # "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v3    # "cdmaMmiCode":Lcom/android/internal/telephony/cdma/CdmaMmiCode;
    :cond_6
    const-string v7, "CallManager"

    const-string v8, "Switch"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto :goto_2
.end method

.method public dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1470
    invoke-interface {p1, p2, p3}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dialWithSipUri(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 5291
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public explicitCallTransfer(Lcom/android/internal/telephony/Call;)V
    .locals 3
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1591
    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " explicitCallTransfer("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->canTransfer(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1596
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V

    .line 1600
    :cond_0
    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End explicitCallTransfer("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    return-void
.end method

.method public getActiveFgCall()Lcom/android/internal/telephony/Call;
    .locals 2

    .prologue
    .line 2304
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2305
    .local v0, "call":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 2306
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 2310
    :cond_0
    :goto_0
    return-object v0

    .line 2306
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0
.end method

.method public getActiveFgCallState()Lcom/android/internal/telephony/Call$State;
    .locals 2

    .prologue
    .line 2384
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2386
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 2387
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 2390
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0
.end method

.method public getAllPhones()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Phone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2265
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBgCallConnections()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2410
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2411
    .local v0, "bgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 2412
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 2414
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mEmptyConnections:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getBgPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 709
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getFgCallConnections()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2398
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2399
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 2400
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 2402
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mEmptyConnections:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;
    .locals 2

    .prologue
    .line 2422
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2423
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 2424
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 2426
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFgPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getFirstActiveBgCall()Lcom/android/internal/telephony/Call;
    .locals 2

    .prologue
    .line 2347
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2348
    .local v0, "call":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 2349
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 2353
    :cond_0
    :goto_0
    return-object v0

    .line 2349
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0
.end method

.method public getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;
    .locals 2

    .prologue
    .line 2370
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2371
    .local v0, "call":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 2372
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 2376
    :cond_0
    :goto_0
    return-object v0

    .line 2372
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0
.end method

.method public getForegroundCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2258
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 1668
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1669
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    .line 1673
    :goto_0
    return v0

    .line 1670
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1671
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    goto :goto_0

    .line 1673
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPendingMmiCodes(Lcom/android/internal/telephony/Phone;)Ljava/util/List;
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1616
    const-string v0, "CallManager"

    const-string v1, "getPendingMmiCodes not implemented"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRingingCallCount()I
    .locals 6

    .prologue
    .line 2468
    const/4 v1, 0x0

    .line 2470
    .local v1, "count":I
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2471
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2472
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2475
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_1
    const-string v3, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRingingCallCount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    return v1
.end method

.method public getRingingCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2251
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRingingPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getServiceState()I
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 553
    const/4 v2, 0x1

    .line 555
    .local v2, "resultState":I
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 556
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 557
    .local v3, "serviceState":I
    if-nez v3, :cond_2

    .line 559
    move v2, v3

    .line 574
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v3    # "serviceState":I
    :cond_1
    return v2

    .line 561
    .restart local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v3    # "serviceState":I
    :cond_2
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 564
    if-eq v2, v5, :cond_3

    if-ne v2, v6, :cond_0

    .line 566
    :cond_3
    move v2, v3

    goto :goto_0

    .line 568
    :cond_4
    if-ne v3, v5, :cond_0

    .line 569
    if-ne v2, v6, :cond_0

    .line 570
    move v2, v3

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 5

    .prologue
    .line 530
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 532
    .local v2, "s":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 533
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_1

    .line 534
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 535
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_0

    .line 536
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 539
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2
    return-object v2
.end method

.method public hangupAll()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 4847
    const-string v2, "CallManager"

    const-string v3, " hangupAll() "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4848
    const-string v2, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4851
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 4852
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 4853
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->hangupAll()V

    goto :goto_0

    .line 4856
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    return-void
.end method

.method public hangupAllEx()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 4863
    const/4 v0, 0x0

    .line 4866
    .local v0, "bAtLeastOneNotIdle":Z
    const-string v3, "CallManager"

    const-string v4, " hangupAllEx() "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4867
    const-string v3, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4870
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 4871
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    const-string v3, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phone.getState() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4872
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    if-eq v3, v4, :cond_0

    .line 4873
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->hangupAllEx()V

    .line 4874
    const/4 v0, 0x1

    goto :goto_0

    .line 4878
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    return v0
.end method

.method public hangupForegroundResumeBackground(Lcom/android/internal/telephony/Call;)V
    .locals 5
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1298
    const/4 v1, 0x0

    .line 1299
    .local v1, "foregroundPhone":Lcom/android/internal/telephony/Phone;
    const/4 v0, 0x0

    .line 1302
    .local v0, "backgroundPhone":Lcom/android/internal/telephony/Phone;
    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hangupForegroundResumeBackground("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    const-string v2, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1307
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1308
    if-eqz p1, :cond_0

    .line 1309
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1310
    if-ne v1, v0, :cond_1

    .line 1311
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 1321
    :cond_0
    :goto_0
    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "End hangupForegroundResumeBackground("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    const-string v2, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    return-void

    .line 1314
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 1315
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

.method public hasActiveBgCall()Z
    .locals 1

    .prologue
    .line 2281
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasActiveFgCall()Z
    .locals 1

    .prologue
    .line 2272
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasActiveRingingCall()Z
    .locals 1

    .prologue
    .line 2289
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisconnectedBgCall()Z
    .locals 2

    .prologue
    .line 2440
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/CallManager;->getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisconnectedFgCall()Z
    .locals 2

    .prologue
    .line 2433
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/CallManager;->getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2102
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2103
    return-void
.end method

.method public registerForCallWaiting2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3655
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3656
    return-void
.end method

.method public registerForCallWaitingEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4433
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4434
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4435
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4437
    :cond_0
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2169
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2170
    return-void
.end method

.method public registerForCdmaOtaStatusChange2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3726
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3727
    return-void
.end method

.method public registerForCdmaOtaStatusChangeEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4531
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4532
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4533
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4535
    :cond_0
    return-void
.end method

.method public registerForCipherIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3340
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3341
    return-void
.end method

.method public registerForCipherIndication2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3921
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3922
    return-void
.end method

.method public registerForCipherIndicationEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4820
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4821
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4822
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4824
    :cond_0
    return-void
.end method

.method public registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3291
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3292
    return-void
.end method

.method public registerForCrssSuppServiceNotification2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3866
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3867
    return-void
.end method

.method public registerForCrssSuppServiceNotificationEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4733
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4734
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4735
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4737
    :cond_0
    return-void
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1825
    return-void
.end method

.method public registerForDisconnect2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3363
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3364
    return-void
.end method

.method public registerForDisconnectEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 3969
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 3970
    .local v0, "index":I
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerForDisconnectEx, simId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3971
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3972
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3974
    :cond_0
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2149
    return-void
.end method

.method public registerForDisplayInfo2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3703
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3704
    return-void
.end method

.method public registerForDisplayInfoEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4500
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4501
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4502
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4504
    :cond_0
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2004
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2005
    return-void
.end method

.method public registerForEcmTimerReset2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3551
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3552
    return-void
.end method

.method public registerForEcmTimerResetEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4279
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4280
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4281
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4283
    :cond_0
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2082
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2083
    return-void
.end method

.method public registerForInCallVoicePrivacyOff2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3633
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3634
    return-void
.end method

.method public registerForInCallVoicePrivacyOffEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4403
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4404
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4405
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4407
    :cond_0
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2062
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2063
    return-void
.end method

.method public registerForInCallVoicePrivacyOn2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3612
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3613
    return-void
.end method

.method public registerForInCallVoicePrivacyOnEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4373
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4374
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4375
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4377
    :cond_0
    return-void
.end method

.method public registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1906
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1907
    return-void
.end method

.method public registerForIncomingRing2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3448
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3449
    return-void
.end method

.method public registerForIncomingRingEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4110
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4111
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4112
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4114
    :cond_0
    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1986
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1987
    return-void
.end method

.method public registerForMmiComplete2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3532
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3533
    return-void
.end method

.method public registerForMmiCompleteEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4248
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4249
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4250
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4252
    :cond_0
    return-void
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1966
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1967
    return-void
.end method

.method public registerForMmiInitiate2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3511
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3512
    return-void
.end method

.method public registerForMmiInitiateEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4213
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4214
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4215
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4217
    :cond_0
    return-void
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1885
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1886
    return-void
.end method

.method public registerForNewRingingConnection2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3426
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3427
    return-void
.end method

.method public registerForNewRingingConnectionEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4075
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4076
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4077
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4079
    :cond_0
    return-void
.end method

.method public registerForPhoneStates(Lcom/android/internal/telephony/Phone;)V
    .locals 8
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v0, 0x4

    const/4 v7, 0x0

    .line 819
    instance-of v4, p1, Lcom/android/internal/telephony/sip/SipPhone;

    if-nez v4, :cond_3

    .line 820
    instance-of v4, p1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-eqz v4, :cond_1

    .line 822
    sget v4, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v4, :cond_0

    .line 824
    .local v0, "count":I
    :goto_0
    const-string v4, "CallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[registerForPhoneStates]count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 826
    mul-int/lit8 v2, v1, 0x64

    .local v2, "offset":I
    move-object v4, p1

    .line 827
    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    add-int/lit8 v5, v1, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 829
    .local v3, "targetPhone":Lcom/android/internal/telephony/Phone;
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x65

    invoke-interface {v3, v4, v5, v7}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 830
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x64

    invoke-interface {v3, v4, v5, v7}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 831
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x66

    invoke-interface {v3, v4, v5, v7}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 832
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x67

    invoke-interface {v3, v4, v5, v7}, Lcom/android/internal/telephony/Phone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 833
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x68

    invoke-interface {v3, v4, v5, v7}, Lcom/android/internal/telephony/Phone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 834
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x69

    invoke-interface {v3, v4, v5, v7}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 835
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x6a

    invoke-interface {v3, v4, v5, v7}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 836
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x6b

    invoke-interface {v3, v4, v5, v7}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 837
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x6d

    invoke-interface {v3, v4, v5, v7}, Lcom/android/internal/telephony/Phone;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 838
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x6e

    invoke-interface {v3, v4, v5, v7}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 839
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x71

    invoke-interface {v3, v4, v5, v7}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 840
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x72

    invoke-interface {v3, v4, v5, v7}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 841
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x75

    invoke-interface {v3, v4, v5, v7}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 842
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x76

    invoke-interface {v3, v4, v5, v7}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 843
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x77

    invoke-interface {v3, v4, v5, v7}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 846
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x78

    invoke-interface {v3, v4, v5, v7}, Lcom/android/internal/telephony/Phone;->registerForSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 847
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x79

    invoke-interface {v3, v4, v5, v7}, Lcom/android/internal/telephony/Phone;->registerForVtStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 848
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x7a

    invoke-interface {v3, v4, v5, v7}, Lcom/android/internal/telephony/Phone;->registerForVtRingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 849
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x7b

    invoke-interface {v3, v4, v5, v7}, Lcom/android/internal/telephony/Phone;->registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 850
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x7c

    invoke-interface {v3, v4, v5, v7}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 851
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x7d

    invoke-interface {v3, v4, v5, v7}, Lcom/android/internal/telephony/Phone;->registerForVtReplaceDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 852
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x7e

    invoke-interface {v3, v4, v5, v7}, Lcom/android/internal/telephony/Phone;->registerForVoiceCallIncomingIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 853
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x7f

    invoke-interface {v3, v4, v5, v7}, Lcom/android/internal/telephony/Phone;->registerForRadioOffOrNotAvailableNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 825
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 822
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "offset":I
    .end local v3    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :cond_0
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    goto/16 :goto_0

    .line 896
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->registerSinglePhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 901
    :cond_2
    :goto_2
    return-void

    .line 899
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->registerSinglePhoneStates(Lcom/android/internal/telephony/Phone;)V

    goto :goto_2
.end method

.method public registerForPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2231
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2232
    return-void
.end method

.method public registerForPostDialCharacter2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3790
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3791
    return-void
.end method

.method public registerForPostDialCharacterEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4617
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4618
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4619
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4621
    :cond_0
    return-void
.end method

.method public registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1845
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1846
    return-void
.end method

.method public registerForPreciseCallStateChanged2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3385
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3386
    return-void
.end method

.method public registerForPreciseCallStateChangedEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4006
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4007
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4008
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4010
    :cond_0
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1944
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1945
    return-void
.end method

.method public registerForResendIncallMute2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3488
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3489
    return-void
.end method

.method public registerForResendIncallMuteEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4176
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4177
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4178
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4180
    :cond_0
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1929
    return-void
.end method

.method public registerForRingbackTone2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3471
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3472
    return-void
.end method

.method public registerForRingbackToneEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4146
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4147
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4148
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4150
    :cond_0
    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2021
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2022
    return-void
.end method

.method public registerForServiceStateChanged2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3569
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3570
    return-void
.end method

.method public registerForServiceStateChangedEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4310
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4311
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4312
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4314
    :cond_0
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2125
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2126
    return-void
.end method

.method public registerForSignalInfo2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3679
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3680
    return-void
.end method

.method public registerForSignalInfoEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4467
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4468
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4469
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4471
    :cond_0
    return-void
.end method

.method public registerForSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3243
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3244
    return-void
.end method

.method public registerForSpeechInfo2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3809
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3810
    return-void
.end method

.method public registerForSpeechInfoEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4646
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4647
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4648
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4650
    :cond_0
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2187
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2188
    return-void
.end method

.method public registerForSubscriptionInfoReady2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3745
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3746
    return-void
.end method

.method public registerForSubscriptionInfoReadyEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4560
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4561
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4562
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4564
    :cond_0
    return-void
.end method

.method public registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2041
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2042
    return-void
.end method

.method public registerForSuppServiceFailed2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3590
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3591
    return-void
.end method

.method public registerForSuppServiceFailedEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4341
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4342
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4343
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4345
    :cond_0
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3307
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3308
    return-void
.end method

.method public registerForSuppServiceNotification2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3885
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3886
    return-void
.end method

.method public registerForSuppServiceNotificationEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4762
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4763
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4764
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4766
    :cond_0
    return-void
.end method

.method public registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1861
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1862
    return-void
.end method

.method public registerForUnknownConnection2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3402
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3403
    return-void
.end method

.method public registerForUnknownConnectionEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4037
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4038
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4039
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4041
    :cond_0
    return-void
.end method

.method public registerForVtReplaceDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3324
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3325
    return-void
.end method

.method public registerForVtReplaceDisconnect2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3904
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3905
    return-void
.end method

.method public registerForVtReplaceDisconnectEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4791
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4792
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4793
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4795
    :cond_0
    return-void
.end method

.method public registerForVtRingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3275
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3276
    return-void
.end method

.method public registerForVtRingInfo2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3847
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3848
    return-void
.end method

.method public registerForVtRingInfoEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4704
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4705
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4706
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4708
    :cond_0
    return-void
.end method

.method public registerForVtStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3259
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3260
    return-void
.end method

.method public registerForVtStatusInfo2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3828
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3829
    return-void
.end method

.method public registerForVtStatusInfoEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4675
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4676
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4677
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4679
    :cond_0
    return-void
.end method

.method public registerPhone(Lcom/android/internal/telephony/Phone;)Z
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 624
    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 625
    .local v0, "basePhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 627
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerPhone("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 632
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 634
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    instance-of v1, p1, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v1, :cond_1

    .line 641
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CallManager;->registerForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 644
    :cond_1
    const/4 v1, 0x1

    .line 646
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public rejectCall(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .param p1, "ringingCall"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1205
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rejectCall("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1211
    .local v0, "ringingPhone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->rejectCall()V

    .line 1214
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End rejectCall("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)Z
    .locals 1
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1806
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1807
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 1808
    const/4 v0, 0x1

    .line 1810
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendDtmf(C)Z
    .locals 4
    .param p1, "c"    # C

    .prologue
    .line 1706
    const/4 v0, 0x0

    .line 1709
    .local v0, "result":Z
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sendDtmf("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1714
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    .line 1715
    const/4 v0, 0x1

    .line 1719
    :cond_0
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End sendDtmf("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    return v0
.end method

.method public sendUssdResponse(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "ussdMessge"    # Ljava/lang/String;

    .prologue
    .line 1629
    const-string v0, "CallManager"

    const-string v1, "sendUssdResponse not implemented"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    const/4 v0, 0x0

    return v0
.end method

.method public setAudioMode()V
    .locals 4

    .prologue
    .line 725
    const/4 v0, 0x0

    .line 726
    .local v0, "mode":I
    sget-object v2, Lcom/android/internal/telephony/CallManager$3;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 792
    :goto_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 803
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->setAudioMode(I)V

    .line 805
    return-void

    .line 747
    :pswitch_0
    const/4 v0, 0x1

    .line 748
    goto :goto_0

    .line 750
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 751
    .local v1, "offhookPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    .line 754
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 757
    :cond_1
    instance-of v2, v1, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v2, :cond_2

    .line 759
    const/4 v0, 0x3

    goto :goto_0

    .line 762
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 726
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEchoSuppressionEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1681
    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setEchoSuppression("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1687
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setEchoSuppressionEnabled(Z)V

    .line 1691
    :cond_0
    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End setEchoSuppression("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    return-void
.end method

.method public setMute(Z)V
    .locals 3
    .param p1, "muted"    # Z

    .prologue
    .line 1644
    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setMute("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1649
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    .line 1653
    :cond_0
    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End setMute("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    return-void
.end method

.method public startDtmf(C)Z
    .locals 4
    .param p1, "c"    # C

    .prologue
    .line 1735
    const/4 v0, 0x0

    .line 1738
    .local v0, "result":Z
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " startDtmf("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1743
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    .line 1744
    const/4 v0, 0x1

    .line 1753
    const-string v1, "CallManager"

    const-string v2, "dtmfRequestIsStarted = true"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/CallManager;->dtmfRequestIsStarted:Z

    .line 1759
    :cond_0
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End startDtmf("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    return v0
.end method

.method public stopDtmf()V
    .locals 2

    .prologue
    .line 1772
    const-string v0, "CallManager"

    const-string v1, " stopDtmf()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/CallManager;->dtmfRequestIsStarted:Z

    if-eqz v0, :cond_1

    .line 1779
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    .line 1780
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallManager;->dtmfRequestIsStarted:Z

    .line 1781
    const-string v0, "CallManager"

    const-string v1, "dtmfRequestIsStarted = false"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    :cond_1
    const-string v0, "CallManager"

    const-string v1, "End stopDtmf()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    return-void
.end method

.method public switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V
    .locals 6
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 1238
    const/4 v0, 0x0

    .line 1239
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 1242
    .local v1, "heldPhone":Lcom/android/internal/telephony/Phone;
    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchHoldingAndActive("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    const-string v2, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1247
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1250
    :cond_0
    if-eqz p1, :cond_1

    .line 1251
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1255
    :cond_1
    if-eqz v1, :cond_2

    if-eq v1, v0, :cond_2

    .line 1257
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-eq v2, v5, :cond_2

    .line 1260
    const-string v2, "CallManager"

    const-string v3, "Switch held call to active one after the active call is held successfully."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/CallManager;->bWaitingForHoldRequest:Z

    .line 1262
    sget-object v2, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;->SWITCH_CALL:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    .line 1263
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mActiveCallToBeHeld:Lcom/android/internal/telephony/Call;

    .line 1264
    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhoneForWaitingHoldRequest:Lcom/android/internal/telephony/Phone;

    .line 1268
    :cond_2
    if-eqz v0, :cond_3

    .line 1269
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 1272
    :cond_3
    if-eqz v1, :cond_4

    if-eq v1, v0, :cond_4

    .line 1274
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-eq v2, v5, :cond_5

    .line 1284
    :cond_4
    :goto_0
    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "End switchHoldingAndActive("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    const-string v2, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    return-void

    .line 1279
    :cond_5
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2887
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v4, "CallManager {"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2888
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nstate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2889
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2890
    .local v1, "call":Lcom/android/internal/telephony/Call;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n- Foreground: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2891
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2892
    const-string v4, "\n  Conn: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2893
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2894
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n- Background: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2895
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2896
    const-string v4, "\n  Conn: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getBgCallConnections()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2897
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2898
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n- Ringing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2899
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2901
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Phone;

    .line 2902
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v3, :cond_0

    .line 2903
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nPhone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2905
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2906
    const-string v4, "\n- Foreground: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2907
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2908
    const-string v4, " Background: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2909
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2910
    const-string v4, " Ringing: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2913
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    const-string v4, "\n}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2914
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2110
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2111
    return-void
.end method

.method public unregisterForCallWaiting2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3664
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3665
    return-void
.end method

.method public unregisterForCallWaitingEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4447
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4448
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4449
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4451
    :cond_0
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2177
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2178
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3735
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3736
    return-void
.end method

.method public unregisterForCdmaOtaStatusChangeEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4545
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4546
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4547
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4549
    :cond_0
    return-void
.end method

.method public unregisterForCipherIndication(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3348
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3349
    return-void
.end method

.method public unregisterForCipherIndication2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3930
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3931
    return-void
.end method

.method public unregisterForCipherIndicationEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4834
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4835
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4836
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4838
    :cond_0
    return-void
.end method

.method public unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3299
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3300
    return-void
.end method

.method public unregisterForCrssSuppServiceNotification2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3875
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3876
    return-void
.end method

.method public unregisterForCrssSuppServiceNotificationEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4747
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4748
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4749
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4751
    :cond_0
    return-void
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1833
    return-void
.end method

.method public unregisterForDisconnect2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3372
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3373
    return-void
.end method

.method public unregisterForDisconnectEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 3985
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 3986
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3987
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3989
    :cond_0
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2158
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2159
    return-void
.end method

.method public unregisterForDisplayInfo2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3714
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3715
    return-void
.end method

.method public unregisterForDisplayInfoEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4515
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4516
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4517
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4519
    :cond_0
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2012
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2013
    return-void
.end method

.method public unregisterForEcmTimerReset2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3560
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3561
    return-void
.end method

.method public unregisterForEcmTimerResetEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4293
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4294
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4295
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4297
    :cond_0
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2091
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2092
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3643
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3644
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOffEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4417
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4418
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4419
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4421
    :cond_0
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2071
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2072
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3622
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3623
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOnEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4387
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4388
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4389
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4391
    :cond_0
    return-void
.end method

.method public unregisterForIncomingRing(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1916
    return-void
.end method

.method public unregisterForIncomingRing2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3458
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3459
    return-void
.end method

.method public unregisterForIncomingRingEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4125
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4126
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4127
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4129
    :cond_0
    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1994
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1995
    return-void
.end method

.method public unregisterForMmiComplete2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3541
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3542
    return-void
.end method

.method public unregisterForMmiCompleteEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4263
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4264
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4265
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4267
    :cond_0
    return-void
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1974
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1975
    return-void
.end method

.method public unregisterForMmiInitiate2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3520
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3521
    return-void
.end method

.method public unregisterForMmiInitiateEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4228
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4229
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4230
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4232
    :cond_0
    return-void
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1894
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1895
    return-void
.end method

.method public unregisterForNewRingingConnection2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3436
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3437
    return-void
.end method

.method public unregisterForNewRingingConnectionEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4090
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4091
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4092
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4094
    :cond_0
    return-void
.end method

.method public unregisterForPhoneStates(Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x4

    .line 910
    instance-of v3, p1, Lcom/android/internal/telephony/sip/SipPhone;

    if-nez v3, :cond_3

    .line 911
    instance-of v3, p1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-eqz v3, :cond_1

    .line 912
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v3, :cond_0

    .line 915
    .local v0, "count":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    move-object v3, p1

    .line 916
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 918
    .local v2, "targetPhone":Lcom/android/internal/telephony/Phone;
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 919
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 920
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 921
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 922
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 923
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 924
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 925
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 926
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 927
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 928
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 929
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 930
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 931
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 932
    const/16 v3, 0x77

    invoke-interface {v2, v5, v3, v5}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 935
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->unregisterForSpeechInfo(Landroid/os/Handler;)V

    .line 936
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->unregisterForVtStatusInfo(Landroid/os/Handler;)V

    .line 937
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->unregisterForVtRingInfo(Landroid/os/Handler;)V

    .line 938
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V

    .line 939
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 940
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->unregisterForVtReplaceDisconnect(Landroid/os/Handler;)V

    .line 941
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->unregisterForVoiceCallIncomingIndication(Landroid/os/Handler;)V

    .line 942
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->unregisterForRadioOffOrNotAvailableNotification(Landroid/os/Handler;)V

    .line 915
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 912
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :cond_0
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    goto/16 :goto_0

    .line 953
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterSinglePhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 958
    :cond_2
    :goto_2
    return-void

    .line 956
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterSinglePhoneStates(Lcom/android/internal/telephony/Phone;)V

    goto :goto_2
.end method

.method public unregisterForPostDialCharacter(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2235
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2236
    return-void
.end method

.method public unregisterForPostDialCharacter2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3799
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3800
    return-void
.end method

.method public unregisterForPostDialCharacterEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4631
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4632
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4633
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4635
    :cond_0
    return-void
.end method

.method public unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1854
    return-void
.end method

.method public unregisterForPreciseCallStateChanged2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3394
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3395
    return-void
.end method

.method public unregisterForPreciseCallStateChangedEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4021
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4022
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4023
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4025
    :cond_0
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1951
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1952
    return-void
.end method

.method public unregisterForResendIncallMute2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3496
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3497
    return-void
.end method

.method public unregisterForResendIncallMuteEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4190
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4191
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4192
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4194
    :cond_0
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1936
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1937
    return-void
.end method

.method public unregisterForRingbackTone2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3480
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3481
    return-void
.end method

.method public unregisterForRingbackToneEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4160
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4161
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4162
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4164
    :cond_0
    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2029
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2030
    return-void
.end method

.method public unregisterForServiceStateChanged2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3578
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3579
    return-void
.end method

.method public unregisterForServiceStateChangedEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4325
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4326
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4327
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4329
    :cond_0
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2135
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2136
    return-void
.end method

.method public unregisterForSignalInfo2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3690
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3691
    return-void
.end method

.method public unregisterForSignalInfoEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4482
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4483
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4484
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4486
    :cond_0
    return-void
.end method

.method public unregisterForSpeechInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3251
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3252
    return-void
.end method

.method public unregisterForSpeechInfo2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3818
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3819
    return-void
.end method

.method public unregisterForSpeechInfoEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4660
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4661
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4662
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4664
    :cond_0
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2195
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2196
    return-void
.end method

.method public unregisterForSubscriptionInfoReady2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3754
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3755
    return-void
.end method

.method public unregisterForSubscriptionInfoReadyEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4574
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4575
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4576
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4578
    :cond_0
    return-void
.end method

.method public unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2051
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2052
    return-void
.end method

.method public unregisterForSuppServiceFailed2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3601
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3602
    return-void
.end method

.method public unregisterForSuppServiceFailedEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4357
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4358
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4359
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4361
    :cond_0
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3315
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3316
    return-void
.end method

.method public unregisterForSuppServiceNotification2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3894
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3895
    return-void
.end method

.method public unregisterForSuppServiceNotificationEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4776
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4777
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4778
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4780
    :cond_0
    return-void
.end method

.method public unregisterForUnknownConnection(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1869
    return-void
.end method

.method public unregisterForUnknownConnection2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3410
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3411
    return-void
.end method

.method public unregisterForUnknownConnectionEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4051
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4052
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4053
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4055
    :cond_0
    return-void
.end method

.method public unregisterForVtReplaceDisconnect(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3332
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3333
    return-void
.end method

.method public unregisterForVtReplaceDisconnect2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3913
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3914
    return-void
.end method

.method public unregisterForVtReplaceDisconnectEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4805
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4806
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4807
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4809
    :cond_0
    return-void
.end method

.method public unregisterForVtRingInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3283
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3284
    return-void
.end method

.method public unregisterForVtRingInfo2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3856
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3857
    return-void
.end method

.method public unregisterForVtRingInfoEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4718
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4719
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4720
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4722
    :cond_0
    return-void
.end method

.method public unregisterForVtStatusInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3267
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3268
    return-void
.end method

.method public unregisterForVtStatusInfo2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3837
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3838
    return-void
.end method

.method public unregisterForVtStatusInfoEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4689
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4690
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4691
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4693
    :cond_0
    return-void
.end method

.method public unregisterPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 655
    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 657
    .local v0, "basePhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 660
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterPhone("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    instance-of v1, p1, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v1, :cond_0

    .line 667
    const-string v1, "CallManager"

    const-string v2, "notifyDisconnectedForSipCall"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->notifyDisconnectedForSipCall(Lcom/android/internal/telephony/Phone;)V

    .line 671
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 672
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 673
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 674
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 676
    instance-of v1, p1, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v1, :cond_1

    .line 678
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CallManager;->unregisterForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 681
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-ne v0, v1, :cond_2

    .line 682
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 683
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 689
    :cond_2
    :goto_0
    return-void

    .line 685
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0
.end method

.method public vtDial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 9
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4889
    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 4893
    .local v1, "basePhone":Lcom/android/internal/telephony/Phone;
    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " vtDial("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4894
    const-string v6, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4898
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4899
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4901
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    instance-of v6, v0, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v6, :cond_4

    .line 4902
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v4

    .line 4905
    .local v2, "hasBgCall":Z
    :goto_0
    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasBgCall: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sameChannel:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-ne v0, v1, :cond_2

    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4908
    if-eqz v2, :cond_3

    .line 4909
    const-string v4, "CallManager"

    const-string v5, "Hangup"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4910
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 4920
    .end local v0    # "activePhone":Lcom/android/internal/telephony/Phone;
    .end local v2    # "hasBgCall":Z
    :cond_0
    :goto_2
    invoke-interface {v1, p2}, Lcom/android/internal/telephony/Phone;->vtDial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 4923
    .local v3, "result":Lcom/android/internal/telephony/Connection;
    const-string v4, "CallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "End vtDial("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4924
    const-string v4, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4927
    return-object v3

    .end local v3    # "result":Lcom/android/internal/telephony/Connection;
    .restart local v0    # "activePhone":Lcom/android/internal/telephony/Phone;
    :cond_1
    move v2, v5

    .line 4902
    goto :goto_0

    .restart local v2    # "hasBgCall":Z
    :cond_2
    move v4, v5

    .line 4905
    goto :goto_1

    .line 4912
    :cond_3
    const-string v4, "CallManager"

    const-string v5, "Switch"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4913
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto :goto_2

    .line 4916
    .end local v2    # "hasBgCall":Z
    :cond_4
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupAll()V

    goto :goto_2
.end method
