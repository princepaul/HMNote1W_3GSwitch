.class public Lcom/mediatek/settings/VoiceMailSetting;
.super Landroid/app/Activity;
.source "VoiceMailSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/phone/settings/EditPhoneNumberPreference$OnDialogClosedListener;
.implements Lcom/android/phone/settings/EditPhoneNumberPreference$GetDefaultNumberListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/VoiceMailSetting$CallFeaturesSettingBroadcastReceiver;,
        Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;,
        Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;,
        Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProvider;
    }
.end annotation


# static fields
.field public static final ACTION_ADD_VOICEMAIL:Ljava/lang/String; = "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

.field public static final ACTION_CONFIGURE_VOICEMAIL:Ljava/lang/String; = "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

.field private static final BUTTON_VOICEMAIL_KEY:Ljava/lang/String; = "button_voicemail_key"

.field private static final BUTTON_VOICEMAIL_PROVIDER_KEY:Ljava/lang/String; = "button_voicemail_provider_key"

.field private static final BUTTON_VOICEMAIL_SETTING_KEY:Ljava/lang/String; = "button_voicemail_setting_key"

.field private static final DBG:Z = true

.field private static final DEFAULT_VM_PROVIDER_KEY:[Ljava/lang/String;

.field static final DTMF_TONE_TYPE_LONG:I = 0x1

.field static final DTMF_TONE_TYPE_NORMAL:I = 0x0

.field private static final EVENT_FORWARDING_CHANGED:I = 0x1f5

.field private static final EVENT_FORWARDING_GET_COMPLETED:I = 0x1f6

.field private static final EVENT_VOICEMAIL_CHANGED:I = 0x1f4

.field static final FORWARDING_SETTINGS_REASONS:[I

.field public static final FWD_NUMBER_EXTRA:Ljava/lang/String; = "com.android.phone.ForwardingNumber"

.field public static final FWD_NUMBER_TIME_EXTRA:Ljava/lang/String; = "com.android.phone.ForwardingNumberTime"

.field public static final FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

.field public static final FWD_SETTINGS_LENGTH_TAG:Ljava/lang/String; = "#Length"

.field public static final FWD_SETTINGS_TAG:Ljava/lang/String; = "#FWDSettings"

.field public static final FWD_SETTING_NUMBER:Ljava/lang/String; = "#Number"

.field public static final FWD_SETTING_REASON:Ljava/lang/String; = "#Reason"

.field public static final FWD_SETTING_STATUS:Ljava/lang/String; = "#Status"

.field public static final FWD_SETTING_TAG:Ljava/lang/String; = "#Setting"

.field public static final FWD_SETTING_TIME:Ljava/lang/String; = "#Time"

.field private static final FW_GET_RESPONSE_ERROR:I = 0x1f6

.field private static final FW_SET_RESPONSE_ERROR:I = 0x1f5

.field public static final IGNORE_PROVIDER_EXTRA:Ljava/lang/String; = "com.android.phone.ProviderToIgnore"

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/VoiceMailSetting"

.field private static final MSG_FW_GET_EXCEPTION:I = 0x192

.field private static final MSG_FW_SET_EXCEPTION:I = 0x191

.field private static final MSG_VM_EXCEPTION:I = 0x190

.field private static final MSG_VM_NOCHANGE:I = 0x2bc

.field private static final MSG_VM_OK:I = 0x258

.field private static final NUM_PROJECTION:[Ljava/lang/String;

.field public static final SIGNOUT_EXTRA:Ljava/lang/String; = "com.android.phone.Signout"

.field private static final VM_NOCHANGE_ERROR:I = 0x190

.field private static final VM_NUMBERS_SHARED_PREFERENCES_NAME:[Ljava/lang/String;

.field public static final VM_NUMBER_EXTRA:Ljava/lang/String; = "com.android.phone.VoicemailNumber"

.field public static final VM_NUMBER_TAG:Ljava/lang/String; = "#VMNumber"

.field private static final VM_RESPONSE_ERROR:I = 0x1f4

.field private static final VOICEMAIL_DIALOG_CONFIRM:I = 0x258

.field private static final VOICEMAIL_FWD_READING_DIALOG:I = 0x25a

.field private static final VOICEMAIL_FWD_SAVING_DIALOG:I = 0x259

.field private static final VOICEMAIL_PREF_ID:I = 0x1

.field private static final VOICEMAIL_PROVIDER_CFG_ID:I = 0x2

.field private static final VOICEMAIL_REVERTING_DIALOG:I = 0x25b

.field private static final VOICE_MAIL_SETTING:Ljava/lang/String; = "voice_mail_setting"


# instance fields
.field mChangingVMorFwdDueToProviderChange:Z

.field mCurrentDialogId:I

.field private mExpectedChangeResultReasons:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mForeground:Z

.field private mForwardingChangeResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/AsyncResult;",
            ">;"
        }
    .end annotation
.end field

.field mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

.field mFwdChangesRequireRollback:Z

.field private final mGetOptionComplete:Landroid/os/Handler;

.field private mInitTitle:Ljava/lang/String;

.field private mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

.field mNewVMNumber:Ljava/lang/String;

.field private mOldVmNumber:Ljava/lang/String;

.field mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPreviousVMProviderKey:Ljava/lang/String;

.field private mReadingSettingsForDefaultProvider:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRevertOptionComplete:Landroid/os/Handler;

.field private final mSetOptionComplete:Landroid/os/Handler;

.field private mSlotId:I

.field private mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

.field mVMChangeCompletedSuccesfully:Z

.field mVMOrFwdSetError:I

.field mVMProviderSettingsForced:Z

.field private final mVMProvidersData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProvider;",
            ">;"
        }
    .end annotation
.end field

.field mVoicemailChangeResult:Landroid/os/AsyncResult;

.field private mVoicemailProviders:Landroid/preference/ListPreference;

.field private mVoicemailSettings:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/settings/VoiceMailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 115
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v2

    const-string v1, "2"

    aput-object v1, v0, v3

    const-string v1, "3"

    aput-object v1, v0, v5

    const-string v1, "4"

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/settings/VoiceMailSetting;->DEFAULT_VM_PROVIDER_KEY:[Ljava/lang/String;

    .line 126
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v2

    sput-object v0, Lcom/mediatek/settings/VoiceMailSetting;->NUM_PROJECTION:[Ljava/lang/String;

    .line 134
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "vm_numbers"

    aput-object v1, v0, v2

    const-string v1, "vm_numbers_sim2"

    aput-object v1, v0, v3

    const-string v1, "vm_numbers_sim3"

    aput-object v1, v0, v5

    const-string v1, "vm_numbers_sim4"

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/settings/VoiceMailSetting;->VM_NUMBERS_SHARED_PREFERENCES_NAME:[Ljava/lang/String;

    .line 191
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/settings/VoiceMailSetting;->FORWARDING_SETTINGS_REASONS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 152
    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mInitTitle:Ljava/lang/String;

    .line 171
    new-instance v0, Lcom/mediatek/settings/VoiceMailSetting$CallFeaturesSettingBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/settings/VoiceMailSetting$CallFeaturesSettingBroadcastReceiver;-><init>(Lcom/mediatek/settings/VoiceMailSetting;Lcom/mediatek/settings/VoiceMailSetting$1;)V

    iput-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 290
    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 296
    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 303
    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 308
    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 313
    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 318
    iput v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mCurrentDialogId:I

    .line 324
    iput-boolean v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMProviderSettingsForced:Z

    .line 330
    iput-boolean v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 336
    iput-boolean v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMChangeCompletedSuccesfully:Z

    .line 342
    iput-boolean v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mFwdChangesRequireRollback:Z

    .line 348
    iput v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMOrFwdSetError:I

    .line 358
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    .line 384
    iput-boolean v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mReadingSettingsForDefaultProvider:Z

    .line 759
    new-instance v0, Lcom/mediatek/settings/VoiceMailSetting$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/VoiceMailSetting$1;-><init>(Lcom/mediatek/settings/VoiceMailSetting;)V

    iput-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mGetOptionComplete:Landroid/os/Handler;

    .line 949
    new-instance v0, Lcom/mediatek/settings/VoiceMailSetting$2;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/VoiceMailSetting$2;-><init>(Lcom/mediatek/settings/VoiceMailSetting;)V

    iput-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSetOptionComplete:Landroid/os/Handler;

    .line 1023
    new-instance v0, Lcom/mediatek/settings/VoiceMailSetting$3;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/VoiceMailSetting$3;-><init>(Lcom/mediatek/settings/VoiceMailSetting;)V

    iput-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mRevertOptionComplete:Landroid/os/Handler;

    .line 1819
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/VoiceMailSetting;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VoiceMailSetting;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/settings/VoiceMailSetting;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VoiceMailSetting;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/settings/VoiceMailSetting;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VoiceMailSetting;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/settings/VoiceMailSetting;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VoiceMailSetting;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/settings/VoiceMailSetting;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VoiceMailSetting;

    .prologue
    .line 76
    iget v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSlotId:I

    return v0
.end method

.method static synthetic access$1400(Lcom/mediatek/settings/VoiceMailSetting;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VoiceMailSetting;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/mediatek/settings/VoiceMailSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/settings/VoiceMailSetting;Ljava/lang/String;)Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VoiceMailSetting;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/mediatek/settings/VoiceMailSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/settings/VoiceMailSetting;Ljava/lang/String;Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VoiceMailSetting;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/VoiceMailSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/settings/VoiceMailSetting;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VoiceMailSetting;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/settings/VoiceMailSetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VoiceMailSetting;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->checkForwardingCompleted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/settings/VoiceMailSetting;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VoiceMailSetting;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/settings/VoiceMailSetting;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VoiceMailSetting;
    .param p1, "x1"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/mediatek/settings/VoiceMailSetting;->dismissDialogSafely(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/settings/VoiceMailSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VoiceMailSetting;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->handleSetVMOrFwdMessage()V

    return-void
.end method

.method static synthetic access$702(Lcom/mediatek/settings/VoiceMailSetting;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VoiceMailSetting;
    .param p1, "x1"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p1
.end method

.method static synthetic access$800(Lcom/mediatek/settings/VoiceMailSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VoiceMailSetting;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->initSlotId()V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/settings/VoiceMailSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VoiceMailSetting;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->initUIState()V

    return-void
.end method

.method private checkForwardingCompleted()Z
    .locals 4

    .prologue
    .line 1071
    iget-object v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 1072
    const/4 v2, 0x1

    .line 1084
    .local v2, "result":Z
    :cond_0
    :goto_0
    return v2

    .line 1076
    .end local v2    # "result":Z
    :cond_1
    const/4 v2, 0x1

    .line 1077
    .restart local v2    # "result":Z
    iget-object v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1078
    .local v1, "reason":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1079
    const/4 v2, 0x0

    .line 1080
    goto :goto_0
.end method

.method private checkFwdChangeSuccess()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1090
    const/4 v3, 0x0

    .line 1091
    .local v3, "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1093
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1094
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1095
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v1, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1096
    .local v1, "exception":Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    .line 1097
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1098
    if-nez v3, :cond_1

    .line 1099
    const-string v3, ""

    .line 1104
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    .end local v1    # "exception":Ljava/lang/Throwable;
    :cond_1
    return-object v3
.end method

.method private checkVMChangeSuccess()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1111
    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 1112
    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1113
    .local v0, "msg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1114
    const-string v0, ""

    .line 1118
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private deleteSettingsForVoicemailProvider(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1791
    const-string v0, "Settings/VoiceMailSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting settings for"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v0, :cond_0

    .line 1800
    :goto_0
    return-void

    .line 1796
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#VMNumber"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#FWDSettings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#Length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private dismissDialogSafely(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 695
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/settings/VoiceMailSetting;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    :goto_0
    return-void

    .line 696
    :catch_0
    move-exception v0

    .line 697
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "Settings/VoiceMailSetting"

    const-string v2, "IllegalArgumentException"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCurrentVoicemailProviderKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1803
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1805
    .local v0, "key":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1806
    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1807
    .local v1, "sp":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "button_voicemail_provider_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1810
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    if-eqz v0, :cond_1

    .end local v0    # "key":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "key":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/mediatek/settings/VoiceMailSetting;->DEFAULT_VM_PROVIDER_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSlotId:I

    aget-object v0, v2, v3

    goto :goto_0
.end method

.method private handleSetVMOrFwdMessage()V
    .locals 6

    .prologue
    .line 1123
    const-string v3, "Settings/VoiceMailSetting"

    const-string v4, "handleSetVMMessage: set VM request complete"

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    const/4 v2, 0x1

    .line 1126
    .local v2, "success":Z
    const/4 v1, 0x0

    .line 1127
    .local v1, "fwdFailure":Z
    const-string v0, ""

    .line 1128
    .local v0, "exceptionMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 1129
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    .line 1130
    if-eqz v0, :cond_0

    .line 1131
    const/4 v2, 0x0

    .line 1132
    const/4 v1, 0x1

    .line 1135
    :cond_0
    if-eqz v2, :cond_1

    .line 1136
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    .line 1137
    if-eqz v0, :cond_1

    .line 1138
    const/4 v2, 0x0

    .line 1141
    :cond_1
    if-eqz v2, :cond_2

    .line 1143
    const-string v3, "Settings/VoiceMailSetting"

    const-string v4, "change VM success!"

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    const/16 v3, 0x258

    invoke-direct {p0, v3}, Lcom/mediatek/settings/VoiceMailSetting;->handleVMAndFwdSetSuccess(I)V

    .line 1146
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->updateVoiceNumberField()V

    .line 1156
    :goto_0
    return-void

    .line 1148
    :cond_2
    if-eqz v1, :cond_3

    .line 1149
    const-string v3, "Settings/VoiceMailSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "change FW failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    const/16 v3, 0x191

    invoke-direct {p0, v3}, Lcom/mediatek/settings/VoiceMailSetting;->handleVMOrFwdSetError(I)V

    goto :goto_0

    .line 1152
    :cond_3
    const-string v3, "Settings/VoiceMailSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "change VM failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    const/16 v3, 0x190

    invoke-direct {p0, v3}, Lcom/mediatek/settings/VoiceMailSetting;->handleVMOrFwdSetError(I)V

    goto :goto_0
.end method

.method private handleVMAndFwdSetSuccess(I)V
    .locals 1
    .param p1, "msgId"    # I

    .prologue
    .line 1171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1172
    invoke-direct {p0, p1}, Lcom/mediatek/settings/VoiceMailSetting;->showVMDialog(I)V

    .line 1173
    return-void
.end method

.method private handleVMBtnClickRequest()V
    .locals 4

    .prologue
    .line 656
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;

    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/settings/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/mediatek/settings/VoiceMailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1, p0, v2, v3}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;-><init>(Lcom/mediatek/settings/VoiceMailSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v0, v1}, Lcom/mediatek/settings/VoiceMailSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;)V

    .line 660
    return-void
.end method

.method private handleVMOrFwdSetError(I)V
    .locals 2
    .param p1, "msgId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1159
    iget-boolean v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mChangingVMorFwdDueToProviderChange:Z

    if-eqz v0, :cond_0

    .line 1160
    iput p1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMOrFwdSetError:I

    .line 1161
    iput-boolean v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1162
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->switchToPreviousVoicemailProvider()V

    .line 1168
    :goto_0
    return-void

    .line 1165
    :cond_0
    iput-boolean v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1166
    invoke-direct {p0, p1}, Lcom/mediatek/settings/VoiceMailSetting;->showVMDialog(I)V

    .line 1167
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->updateVoiceNumberField()V

    goto :goto_0
.end method

.method private infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;
    .locals 6
    .param p1, "infos"    # [Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "reason"    # I

    .prologue
    .line 871
    const/4 v4, 0x0

    .line 872
    .local v4, "result":Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz p1, :cond_0

    .line 873
    move-object v0, p1

    .local v0, "arr$":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 874
    .local v2, "info":Lcom/android/internal/telephony/CallForwardInfo;
    iget v5, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v5, p2, :cond_1

    .line 875
    move-object v4, v2

    .line 880
    .end local v0    # "arr$":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v1    # "i$":I
    .end local v2    # "info":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v3    # "len$":I
    :cond_0
    return-object v4

    .line 873
    .restart local v0    # "arr$":[Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v1    # "i$":I
    .restart local v2    # "info":Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v3    # "len$":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initSlotId()V
    .locals 4

    .prologue
    .line 1886
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1888
    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "simId"

    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getDefaultSlot()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSlotId:I

    .line 1889
    const-string v1, "Settings/VoiceMailSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[mSlotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    iget v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSlotId:I

    invoke-static {p0, v1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 1891
    .local v0, "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_0

    .line 1892
    iget-object v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/VoiceMailSetting;->setTitle(Ljava/lang/CharSequence;)V

    .line 1895
    .end local v0    # "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->registerCallBacks()V

    .line 1896
    return-void
.end method

.method private initUIState()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1837
    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "voice_mail_setting"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;

    .line 1838
    .local v0, "fragment":Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;
    const-string v1, "button_voicemail_key"

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/settings/EditPhoneNumberPreference;

    iput-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    .line 1839
    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    if-eqz v1, :cond_0

    .line 1840
    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    invoke-virtual {v1, p0, v4, p0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/settings/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1841
    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/settings/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1842
    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    const v2, 0x7f0b04a5

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 1844
    :cond_0
    const-string v1, "button_voicemail_provider_key"

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    .line 1845
    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-eqz v1, :cond_2

    .line 1846
    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1847
    const-string v1, "button_voicemail_setting_key"

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    .line 1848
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1849
    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "button_voicemail_provider_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1851
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->initVoiceMailProviders()V

    .line 1859
    :cond_2
    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-eqz v1, :cond_3

    .line 1861
    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-le v1, v4, :cond_4

    .line 1862
    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-direct {p0, v1}, Lcom/mediatek/settings/VoiceMailSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    .line 1868
    :cond_3
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMProviderSettingsForced:Z

    .line 1870
    return-void

    .line 1864
    :cond_4
    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    sget-object v2, Lcom/mediatek/settings/VoiceMailSetting;->DEFAULT_VM_PROVIDER_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSlotId:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1865
    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    sget-object v2, Lcom/mediatek/settings/VoiceMailSetting;->DEFAULT_VM_PROVIDER_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSlotId:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initVoiceMailProviders()V
    .locals 23

    .prologue
    .line 1576
    const-string v19, "Settings/VoiceMailSetting"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "callFeaturesSettings, initVoiceMailProviders: simId = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/settings/VoiceMailSetting;->mSlotId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/settings/VoiceMailSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    sget-object v20, Lcom/mediatek/settings/VoiceMailSetting;->VM_NUMBERS_SHARED_PREFERENCES_NAME:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/settings/VoiceMailSetting;->mSlotId:I

    move/from16 v21, v0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/settings/VoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    .line 1580
    const/4 v14, 0x0

    .line 1581
    .local v14, "providerToIgnore":Ljava/lang/String;
    const-string v19, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/settings/VoiceMailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1583
    const-string v19, "Settings/VoiceMailSetting"

    const-string v20, "ACTION_ADD_VOICEMAIL"

    invoke-static/range {v19 .. v20}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/settings/VoiceMailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "com.android.phone.ProviderToIgnore"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1586
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/settings/VoiceMailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "com.android.phone.ProviderToIgnore"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1589
    :cond_0
    const-string v19, "Settings/VoiceMailSetting"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "providerToIgnore="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    if-eqz v14, :cond_1

    .line 1592
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mediatek/settings/VoiceMailSetting;->deleteSettingsForVoicemailProvider(Ljava/lang/String;)V

    .line 1596
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/VoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->clear()V

    .line 1599
    const v19, 0x7f0b01cc

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/VoiceMailSetting;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1600
    .local v10, "myCarrier":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/VoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v19, v0

    sget-object v20, Lcom/mediatek/settings/VoiceMailSetting;->DEFAULT_VM_PROVIDER_KEY:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/settings/VoiceMailSetting;->mSlotId:I

    move/from16 v21, v0

    aget-object v20, v20, v21

    new-instance v21, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProvider;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v10, v2}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProvider;-><init>(Lcom/mediatek/settings/VoiceMailSetting;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface/range {v19 .. v21}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1607
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/settings/VoiceMailSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 1608
    .local v12, "pm":Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1609
    .local v7, "intent":Landroid/content/Intent;
    const-string v19, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1610
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v7, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 1611
    .local v15, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v9, v19, 0x1

    .line 1615
    .local v9, "len":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_4

    .line 1616
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 1617
    .local v16, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1618
    .local v3, "currentActivityInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/settings/VoiceMailSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v8

    .line 1620
    .local v8, "key":Ljava/lang/String;
    const-string v19, "Settings/VoiceMailSetting"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Loading "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1624
    const-string v19, "Settings/VoiceMailSetting"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Ignoring "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    add-int/lit8 v9, v9, -0x1

    .line 1615
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1603
    .end local v3    # "currentActivityInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "i":I
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "len":I
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v15    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v16    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/VoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v19, v0

    sget-object v20, Lcom/mediatek/settings/VoiceMailSetting;->DEFAULT_VM_PROVIDER_KEY:[Ljava/lang/String;

    const/16 v21, 0x0

    aget-object v20, v20, v21

    new-instance v21, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProvider;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v10, v2}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProvider;-><init>(Lcom/mediatek/settings/VoiceMailSetting;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface/range {v19 .. v21}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1629
    .restart local v3    # "currentActivityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v6    # "i":I
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v8    # "key":Ljava/lang/String;
    .restart local v9    # "len":I
    .restart local v12    # "pm":Landroid/content/pm/PackageManager;
    .restart local v15    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v16    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1630
    .local v11, "nameForDisplay":Ljava/lang/String;
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 1631
    .local v13, "providerIntent":Landroid/content/Intent;
    const-string v19, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1632
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/VoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v19, v0

    new-instance v20, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProvider;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v13}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProvider;-><init>(Lcom/mediatek/settings/VoiceMailSetting;Ljava/lang/String;Landroid/content/Intent;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1642
    .end local v3    # "currentActivityInfo":Landroid/content/pm/ActivityInfo;
    .end local v8    # "key":Ljava/lang/String;
    .end local v11    # "nameForDisplay":Ljava/lang/String;
    .end local v13    # "providerIntent":Landroid/content/Intent;
    .end local v16    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    new-array v4, v9, [Ljava/lang/String;

    .line 1643
    .local v4, "entries":[Ljava/lang/String;
    new-array v0, v9, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1644
    .local v18, "values":[Ljava/lang/String;
    const/16 v19, 0x0

    aput-object v10, v4, v19

    .line 1645
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1646
    const/16 v19, 0x0

    sget-object v20, Lcom/mediatek/settings/VoiceMailSetting;->DEFAULT_VM_PROVIDER_KEY:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/settings/VoiceMailSetting;->mSlotId:I

    move/from16 v21, v0

    aget-object v20, v20, v21

    aput-object v20, v18, v19

    .line 1651
    :goto_3
    const/4 v5, 0x1

    .line 1652
    .local v5, "entryIdx":I
    const/4 v6, 0x0

    :goto_4
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_7

    .line 1653
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mediatek/settings/VoiceMailSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v8

    .line 1654
    .restart local v8    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/VoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 1652
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1648
    .end local v5    # "entryIdx":I
    .end local v8    # "key":Ljava/lang/String;
    :cond_5
    const/16 v19, 0x0

    sget-object v20, Lcom/mediatek/settings/VoiceMailSetting;->DEFAULT_VM_PROVIDER_KEY:[Ljava/lang/String;

    const/16 v21, 0x0

    aget-object v20, v20, v21

    aput-object v20, v18, v19

    goto :goto_3

    .line 1657
    .restart local v5    # "entryIdx":I
    .restart local v8    # "key":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/VoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProvider;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProvider;->mName:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v4, v5

    .line 1658
    aput-object v8, v18, v5

    .line 1659
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1662
    .end local v8    # "key":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1665
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/settings/VoiceMailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/settings/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 1666
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1667
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/settings/VoiceMailSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1668
    .local v17, "sp":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "button_voicemail_provider_key"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/settings/VoiceMailSetting;->mSlotId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1671
    .end local v17    # "sp":Landroid/content/SharedPreferences;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mediatek/settings/VoiceMailSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 1672
    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1533
    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z
    .locals 2
    .param p1, "oldInfo"    # Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "newInfo"    # Lcom/android/internal/telephony/CallForwardInfo;

    .prologue
    .line 885
    const/4 v0, 0x1

    .line 886
    .local v0, "result":Z
    iget v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_0

    .line 889
    if-eqz p1, :cond_0

    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_0

    .line 890
    const/4 v0, 0x0

    .line 893
    :cond_0
    return v0
.end method

.method private loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;
    .locals 12
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 1748
    iget-object v7, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#VMNumber"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1750
    .local v6, "vmNumberSetting":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 1752
    const-string v7, "Settings/VoiceMailSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Settings for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    :goto_0
    return-object v5

    .line 1757
    :cond_0
    sget-object v0, Lcom/mediatek/settings/VoiceMailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1758
    .local v0, "cfi":[Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#FWDSettings"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1759
    .local v1, "fwdKey":Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#Length"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1760
    .local v2, "fwdLen":I
    if-lez v2, :cond_1

    .line 1761
    new-array v0, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1762
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v0

    if-ge v3, v7, :cond_1

    .line 1763
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Setting"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1764
    .local v4, "settingKey":Ljava/lang/String;
    new-instance v7, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v7}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v7, v0, v3

    .line 1765
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Status"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1767
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Reason"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1770
    aget-object v7, v0, v3

    const/4 v8, 0x1

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1771
    aget-object v7, v0, v3

    const/16 v8, 0x91

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 1772
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Number"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 1774
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Time"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x14

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 1762
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1779
    .end local v3    # "i":I
    .end local v4    # "settingKey":Ljava/lang/String;
    :cond_1
    new-instance v5, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;

    invoke-direct {v5, p0, v6, v0}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;-><init>(Lcom/mediatek/settings/VoiceMailSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 1781
    .local v5, "settings":Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;
    const-string v7, "Settings/VoiceMailSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Loaded settings for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "ai"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 1675
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method private maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;)V
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newSettings"    # Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;

    .prologue
    .line 1706
    iget-object v7, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v7, :cond_0

    .line 1737
    :goto_0
    return-void

    .line 1709
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/settings/VoiceMailSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;

    move-result-object v0

    .line 1710
    .local v0, "curSettings":Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;
    invoke-virtual {p2, v0}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1712
    const-string v7, "Settings/VoiceMailSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not saving setting for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " since they have not changed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1717
    :cond_1
    const-string v7, "Settings/VoiceMailSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Saving settings for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    iget-object v7, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1720
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#VMNumber"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p2, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->mVoicemailNumber:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1721
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#FWDSettings"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1722
    .local v3, "fwdKey":Ljava/lang/String;
    iget-object v5, p2, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->mForwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1723
    .local v5, "s":[Lcom/android/internal/telephony/CallForwardInfo;
    sget-object v7, Lcom/mediatek/settings/VoiceMailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v5, v7, :cond_2

    .line 1724
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Length"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    array-length v8, v5

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1725
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v7, v5

    if-ge v4, v7, :cond_3

    .line 1726
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Setting"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1727
    .local v6, "settingKey":Ljava/lang/String;
    aget-object v2, v5, v4

    .line 1728
    .local v2, "fi":Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Status"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1729
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Reason"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1730
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Number"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1731
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Time"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1725
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 1734
    .end local v2    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v4    # "i":I
    .end local v6    # "settingKey":Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Length"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1736
    :cond_3
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method private registerCallBacks()V
    .locals 2

    .prologue
    .line 1873
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1876
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1877
    const-string v1, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1880
    :cond_0
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1882
    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/settings/VoiceMailSetting;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1883
    return-void
.end method

.method private resetForwardingChangeState()V
    .locals 1

    .prologue
    .line 897
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 898
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 899
    return-void
.end method

.method private saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newSettings"    # Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;

    .prologue
    const/4 v3, 0x0

    .line 704
    const-string v2, "Settings/VoiceMailSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveVoiceMailAndForwardingNumber: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget-object v2, p2, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->mVoicemailNumber:Ljava/lang/String;

    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    .line 708
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 709
    const-string v2, ""

    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    .line 712
    :cond_0
    iget-object v2, p2, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->mForwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 714
    const-string v4, "Settings/VoiceMailSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newFwdNumber "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v2, v2

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " settings"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 722
    const-string v2, "Settings/VoiceMailSetting"

    const-string v4, "ignoring forwarding setting since this is CDMA phone"

    invoke-static {v2, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    sget-object v2, Lcom/mediatek/settings/VoiceMailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 728
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/settings/VoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v4, Lcom/mediatek/settings/VoiceMailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-ne v2, v4, :cond_3

    .line 729
    const/16 v2, 0x2bc

    invoke-direct {p0, v2}, Lcom/mediatek/settings/VoiceMailSetting;->showVMDialog(I)V

    .line 757
    :goto_1
    return-void

    :cond_2
    move v2, v3

    .line 714
    goto :goto_0

    .line 733
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/VoiceMailSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;)V

    .line 734
    iput-boolean v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMChangeCompletedSuccesfully:Z

    .line 735
    iput-boolean v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mFwdChangesRequireRollback:Z

    .line 736
    iput v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMOrFwdSetError:I

    .line 740
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    sget-object v4, Lcom/mediatek/settings/VoiceMailSetting;->DEFAULT_VM_PROVIDER_KEY:[Ljava/lang/String;

    iget v5, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSlotId:I

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 742
    .local v1, "isKeySame":Z
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v1, :cond_5

    .line 745
    const-string v2, "Settings/VoiceMailSetting"

    const-string v4, "Reading current forwarding settings"

    invoke-static {v2, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    sget-object v2, Lcom/mediatek/settings/VoiceMailSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v2, v2

    new-array v2, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 748
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    sget-object v2, Lcom/mediatek/settings/VoiceMailSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 749
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v4, 0x0

    aput-object v4, v2, v0

    .line 750
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v4, Lcom/mediatek/settings/VoiceMailSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v4, v4, v0

    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting;->mGetOptionComplete:Landroid/os/Handler;

    const/16 v6, 0x1f6

    invoke-virtual {v5, v6, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSlotId:I

    invoke-static {v2, v4, v5, v6}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getCallForwardingOption(Lcom/android/internal/telephony/Phone;ILandroid/os/Message;I)V

    .line 748
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 753
    :cond_4
    const/16 v2, 0x25a

    invoke-direct {p0, v2}, Lcom/mediatek/settings/VoiceMailSetting;->showDialogIfForeground(I)V

    goto :goto_1

    .line 755
    .end local v0    # "i":I
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_1
.end method

.method private saveVoiceMailAndForwardingNumberStage2()V
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v10, 0x0

    .line 904
    iput-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 905
    iput-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 906
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v1, Lcom/mediatek/settings/VoiceMailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v0, v1, :cond_2

    .line 907
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->resetForwardingChangeState()V

    .line 908
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v0, v0

    if-ge v9, v0, :cond_3

    .line 909
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v8, v0, v9

    .line 911
    .local v8, "fi":Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    iget v1, v8, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-direct {p0, v0, v1}, Lcom/mediatek/settings/VoiceMailSetting;->infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v0

    invoke-direct {p0, v0, v8}, Lcom/mediatek/settings/VoiceMailSetting;->isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v7

    .line 914
    .local v7, "doUpdate":Z
    if-eqz v7, :cond_0

    .line 916
    const-string v0, "Settings/VoiceMailSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting fwd #: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 920
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v8, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    :goto_1
    iget v2, v8, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v8, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v8, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v6, 0x1f5

    invoke-virtual {v5, v6, v9, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSlotId:I

    invoke-static/range {v0 .. v6}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->setCallForwardingOption(Lcom/android/internal/telephony/Phone;IILjava/lang/String;ILandroid/os/Message;I)V

    .line 926
    :cond_0
    const/16 v0, 0x259

    invoke-direct {p0, v0}, Lcom/mediatek/settings/VoiceMailSetting;->showDialogIfForeground(I)V

    .line 908
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    move v1, v10

    .line 920
    goto :goto_1

    .line 930
    .end local v7    # "doUpdate":Z
    .end local v8    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v9    # "i":I
    :cond_2
    const-string v0, "Settings/VoiceMailSetting"

    const-string v1, "Not touching fwd #"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting;->setVMNumberWithCarrier()V

    .line 934
    :cond_3
    return-void
.end method

.method private showDialogIfForeground(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 688
    iget-boolean v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForeground:Z

    if-eqz v0, :cond_0

    .line 689
    invoke-virtual {p0, p1}, Lcom/mediatek/settings/VoiceMailSetting;->showDialog(I)V

    .line 691
    :cond_0
    return-void
.end method

.method private showVMDialog(I)V
    .locals 1
    .param p1, "msgStatus"    # I

    .prologue
    .line 1337
    sparse-switch p1, :sswitch_data_0

    .line 1358
    :goto_0
    return-void

    .line 1341
    :sswitch_0
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/mediatek/settings/VoiceMailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1344
    :sswitch_1
    const/16 v0, 0x1f5

    invoke-direct {p0, v0}, Lcom/mediatek/settings/VoiceMailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1347
    :sswitch_2
    const/16 v0, 0x1f6

    invoke-direct {p0, v0}, Lcom/mediatek/settings/VoiceMailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1350
    :sswitch_3
    const/16 v0, 0x190

    invoke-direct {p0, v0}, Lcom/mediatek/settings/VoiceMailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1353
    :sswitch_4
    const/16 v0, 0x258

    invoke-direct {p0, v0}, Lcom/mediatek/settings/VoiceMailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1337
    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_0
        0x191 -> :sswitch_1
        0x192 -> :sswitch_2
        0x258 -> :sswitch_4
        0x2bc -> :sswitch_3
    .end sparse-switch
.end method

.method private simulatePreferenceClick(Landroid/preference/Preference;)V
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1687
    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "voice_mail_setting"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v7

    check-cast v7, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;

    .line 1688
    .local v7, "fragment":Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;
    invoke-virtual {v7}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 1689
    .local v6, "adapter":Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_0
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 1690
    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 1691
    invoke-virtual {v7}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v7}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1696
    :cond_0
    return-void

    .line 1689
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private switchToPreviousVoicemailProvider()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 458
    const-string v0, "Settings/VoiceMailSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchToPreviousVoicemailProvider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 461
    iget-boolean v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMChangeCompletedSuccesfully:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_6

    .line 463
    :cond_0
    const/16 v0, 0x25b

    invoke-direct {p0, v0}, Lcom/mediatek/settings/VoiceMailSetting;->showDialogIfForeground(I)V

    .line 464
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/settings/VoiceMailSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;

    move-result-object v10

    .line 466
    .local v10, "prevSettings":Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;
    if-nez v10, :cond_2

    .line 520
    .end local v10    # "prevSettings":Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;
    :cond_1
    :goto_0
    return-void

    .line 469
    .restart local v10    # "prevSettings":Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;
    :cond_2
    iget-boolean v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMChangeCompletedSuccesfully:Z

    if-eqz v0, :cond_3

    .line 470
    iget-object v0, v10, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->mVoicemailNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    .line 472
    const-string v0, "Settings/VoiceMailSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "have to revert VM to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSlotId:I

    invoke-static {v1, v2}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getVoiceMailAlphaTag(Lcom/android/internal/telephony/Phone;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSlotId:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->setVoiceMailNumber(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    .line 482
    :cond_3
    iget-boolean v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_1

    .line 484
    const-string v0, "Settings/VoiceMailSetting"

    const-string v1, "have to revert fwd"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v9, v10, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->mForwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 488
    .local v9, "prevFwdSettings":[Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz v9, :cond_1

    .line 489
    iget-object v12, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 491
    .local v12, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->resetForwardingChangeState()V

    .line 492
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v0, v9

    if-ge v8, v0, :cond_1

    .line 493
    aget-object v7, v9, v8

    .line 495
    .local v7, "fi":Lcom/android/internal/telephony/CallForwardInfo;
    const-string v0, "Settings/VoiceMailSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reverting fwd #: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget v0, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/AsyncResult;

    .line 500
    .local v11, "result":Landroid/os/AsyncResult;
    if-eqz v11, :cond_4

    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_4

    .line 501
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 503
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    const/4 v1, 0x3

    :goto_2
    iget v2, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v7, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v6, 0x1f5

    invoke-virtual {v5, v6, v8, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSlotId:I

    invoke-static/range {v0 .. v6}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->setCallForwardingOption(Lcom/android/internal/telephony/Phone;IILjava/lang/String;ILandroid/os/Message;I)V

    .line 492
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    move v1, v13

    .line 503
    goto :goto_2

    .line 515
    .end local v7    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v8    # "i":I
    .end local v9    # "prevFwdSettings":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v10    # "prevSettings":Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;
    .end local v11    # "result":Landroid/os/AsyncResult;
    .end local v12    # "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_6
    const-string v0, "Settings/VoiceMailSetting"

    const-string v1, "No need to revert"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting;->onRevertDone()V

    goto/16 :goto_0
.end method

.method private updateVMPreferenceWidgets(Ljava/lang/String;)V
    .locals 9
    .param p1, "currentProviderSetting"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1543
    move-object v0, p1

    .line 1544
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProvider;

    .line 1550
    .local v1, "provider":Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProvider;
    if-nez v1, :cond_0

    .line 1551
    iget-object v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const v4, 0x7f0b01cb

    invoke-virtual {p0, v4}, Lcom/mediatek/settings/VoiceMailSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1552
    iget-object v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1553
    iget-object v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1554
    iget-object v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 1563
    :goto_0
    return-void

    .line 1556
    :cond_0
    iget-object v2, v1, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProvider;->mName:Ljava/lang/String;

    .line 1557
    .local v2, "providerName":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1558
    iget-object v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b0125

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1560
    iget-object v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1561
    iget-object v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    iget-object v4, v1, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProvider;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateVoiceNumberField()V
    .locals 4

    .prologue
    .line 1180
    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    if-nez v1, :cond_0

    .line 1196
    :goto_0
    return-void

    .line 1184
    :cond_0
    const-string v1, "Settings/VoiceMailSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVoiceNumberField, simid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSlotId:I

    invoke-static {v1, v2}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getVoiceMailNumber(Lcom/android/internal/telephony/Phone;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1187
    const-string v1, "Settings/VoiceMailSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVoiceNumberField, mOldVmNumber:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1190
    const-string v1, ""

    iput-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1192
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/settings/EditPhoneNumberPreference;

    .line 1193
    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1195
    .local v0, "summary":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1193
    .end local v0    # "summary":Ljava/lang/String;
    :cond_2
    const v1, 0x7f0b04a8

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/VoiceMailSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "idx"    # I

    .prologue
    const/16 v8, 0x25a

    const/4 v9, 0x0

    .line 775
    const-string v5, "Settings/VoiceMailSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleForwardingSettingsReadResult: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const/4 v2, 0x0

    .line 778
    .local v2, "error":Ljava/lang/Throwable;
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_0

    .line 780
    const-string v5, "Settings/VoiceMailSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FwdRead: ar.exception="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 785
    :cond_0
    iget-object v5, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 787
    const-string v6, "Settings/VoiceMailSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FwdRead: userObj="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v2    # "error":Ljava/lang/Throwable;
    check-cast v2, Ljava/lang/Throwable;

    .line 794
    .restart local v2    # "error":Ljava/lang/Throwable;
    :cond_1
    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    if-nez v5, :cond_2

    .line 796
    const-string v5, "Settings/VoiceMailSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ignoring fwd reading result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    :goto_0
    return-void

    .line 802
    :cond_2
    if-eqz v2, :cond_3

    .line 804
    const-string v5, "Settings/VoiceMailSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error discovered for fwd read : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 807
    invoke-direct {p0, v8}, Lcom/mediatek/settings/VoiceMailSetting;->dismissDialogSafely(I)V

    .line 808
    const/16 v5, 0x192

    invoke-direct {p0, v5}, Lcom/mediatek/settings/VoiceMailSetting;->showVMDialog(I)V

    goto :goto_0

    .line 813
    :cond_3
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v0, v5

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 814
    .local v0, "cfInfoArray":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v3, 0x0

    .line 815
    .local v3, "fi":Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_4

    .line 816
    aget-object v5, v0, v4

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_7

    .line 817
    aget-object v3, v0, v4

    .line 821
    :cond_4
    if-nez v3, :cond_8

    .line 826
    const-string v5, "Settings/VoiceMailSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating default info for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    .end local v3    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 829
    .restart local v3    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    iput v9, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 830
    sget-object v5, Lcom/mediatek/settings/VoiceMailSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v5, v5, p2

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 831
    const/4 v5, 0x1

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 842
    :goto_2
    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v3, v5, p2

    .line 845
    const/4 v1, 0x1

    .line 846
    .local v1, "done":Z
    const/4 v4, 0x0

    :goto_3
    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v5, v5

    if-ge v4, v5, :cond_5

    .line 847
    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v5, v5, v4

    if-nez v5, :cond_b

    .line 848
    const/4 v1, 0x0

    .line 852
    :cond_5
    if-eqz v1, :cond_c

    .line 854
    const-string v5, "Settings/VoiceMailSetting"

    const-string v6, "Done receiving fwd info"

    invoke-static {v5, v6}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    invoke-direct {p0, v8}, Lcom/mediatek/settings/VoiceMailSetting;->dismissDialogSafely(I)V

    .line 857
    iget-boolean v5, p0, Lcom/mediatek/settings/VoiceMailSetting;->mReadingSettingsForDefaultProvider:Z

    if-eqz v5, :cond_6

    .line 858
    sget-object v5, Lcom/mediatek/settings/VoiceMailSetting;->DEFAULT_VM_PROVIDER_KEY:[Ljava/lang/String;

    iget v6, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSlotId:I

    aget-object v5, v5, v6

    new-instance v6, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;

    iget-object v7, p0, Lcom/mediatek/settings/VoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v6, p0, v7, v8}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;-><init>(Lcom/mediatek/settings/VoiceMailSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v5, v6}, Lcom/mediatek/settings/VoiceMailSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;)V

    .line 860
    iput-boolean v9, p0, Lcom/mediatek/settings/VoiceMailSetting;->mReadingSettingsForDefaultProvider:Z

    .line 862
    :cond_6
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto/16 :goto_0

    .line 815
    .end local v1    # "done":Z
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 834
    :cond_8
    iget-object v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v5, :cond_9

    iget-object v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_a

    .line 835
    :cond_9
    iput v9, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 839
    :cond_a
    const-string v5, "Settings/VoiceMailSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 846
    .restart local v1    # "done":Z
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 865
    :cond_c
    const-string v5, "Settings/VoiceMailSetting"

    const-string v6, "Not done receiving fwd info"

    invoke-static {v5, v6}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 541
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_a

    .line 542
    const/4 v8, 0x0

    .line 546
    .local v8, "failure":Z
    const-string v1, "Settings/VoiceMailSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVMProviderSettingsForced: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMProviderSettingsForced:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-boolean v12, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMProviderSettingsForced:Z

    .line 549
    .local v12, "isVMProviderSettingsForced":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMProviderSettingsForced:Z

    .line 551
    const/4 v14, 0x0

    .line 552
    .local v14, "vmNum":Ljava/lang/String;
    const/4 v1, -0x1

    move/from16 v0, p2

    if-eq v0, v1, :cond_2

    .line 554
    const-string v1, "Settings/VoiceMailSetting"

    const-string v2, "onActivityResult: vm provider cfg result not OK."

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const/4 v8, 0x1

    .line 594
    :cond_0
    :goto_0
    if-eqz v8, :cond_8

    .line 596
    const-string v1, "Settings/VoiceMailSetting"

    const-string v2, "Failure in return from voicemail provider"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    if-eqz v12, :cond_7

    .line 599
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->switchToPreviousVoicemailProvider()V

    .line 647
    .end local v8    # "failure":Z
    .end local v12    # "isVMProviderSettingsForced":Z
    .end local v14    # "vmNum":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 558
    .restart local v8    # "failure":Z
    .restart local v12    # "isVMProviderSettingsForced":Z
    .restart local v14    # "vmNum":Ljava/lang/String;
    :cond_2
    if-nez p3, :cond_3

    .line 560
    const-string v1, "Settings/VoiceMailSetting"

    const-string v2, "onActivityResult: vm provider cfg result has no data"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const/4 v8, 0x1

    goto :goto_0

    .line 564
    :cond_3
    const-string v1, "com.android.phone.Signout"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 566
    const-string v1, "Settings/VoiceMailSetting"

    const-string v2, "Provider requested signout"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    if-eqz v12, :cond_4

    .line 570
    const-string v1, "Settings/VoiceMailSetting"

    const-string v2, "Going back to previous provider on signout"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_1

    .line 574
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v13

    .line 576
    .local v13, "victim":Ljava/lang/String;
    const-string v1, "Settings/VoiceMailSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Relaunching activity and ignoring "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    new-instance v11, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 579
    .local v11, "i":Landroid/content/Intent;
    const-string v1, "com.android.phone.ProviderToIgnore"

    invoke-virtual {v11, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    const/high16 v1, 0x4000000

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 581
    invoke-virtual {p0, v11}, Lcom/mediatek/settings/VoiceMailSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 585
    .end local v11    # "i":Landroid/content/Intent;
    .end local v13    # "victim":Ljava/lang/String;
    :cond_5
    const-string v1, "com.android.phone.VoicemailNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 586
    if-eqz v14, :cond_6

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 588
    :cond_6
    const-string v1, "Settings/VoiceMailSetting"

    const-string v2, "onActivityResult: vm provider cfg result has no vmnum"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 602
    :cond_7
    const-string v1, "Settings/VoiceMailSetting"

    const-string v2, "Not switching back the provider since this is not forced config"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 607
    :cond_8
    iput-boolean v12, p0, Lcom/mediatek/settings/VoiceMailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 608
    const-string v1, "com.android.phone.ForwardingNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 611
    .local v9, "fwdNum":Ljava/lang/String;
    const-string v1, "com.android.phone.ForwardingNumberTime"

    const/16 v2, 0x14

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 614
    .local v10, "fwdNumTime":I
    const-string v2, "Settings/VoiceMailSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult: vm provider cfg result "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v9, :cond_9

    const-string v1, "has"

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " forwarding number"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;

    invoke-direct {v2, p0, v14, v9, v10}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;-><init>(Lcom/mediatek/settings/VoiceMailSetting;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v1, v2}, Lcom/mediatek/settings/VoiceMailSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;)V

    goto/16 :goto_1

    .line 614
    :cond_9
    const-string v1, " does not have"

    goto :goto_2

    .line 622
    .end local v8    # "failure":Z
    .end local v9    # "fwdNum":Ljava/lang/String;
    .end local v10    # "fwdNumTime":I
    .end local v12    # "isVMProviderSettingsForced":Z
    .end local v14    # "vmNum":Ljava/lang/String;
    :cond_a
    const/4 v1, -0x1

    move/from16 v0, p2

    if-eq v0, v1, :cond_b

    .line 624
    const-string v1, "Settings/VoiceMailSetting"

    const-string v2, "onActivityResult: contact picker result not OK."

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 629
    :cond_b
    const/4 v7, 0x0

    .line 631
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/mediatek/settings/VoiceMailSetting;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 633
    if-eqz v7, :cond_c

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_c

    .line 634
    packed-switch p1, :pswitch_data_0

    .line 643
    :cond_c
    :goto_3
    if-eqz v7, :cond_1

    .line 644
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 636
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 643
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_d

    .line 644
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v1

    .line 634
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/16 v2, 0x1f6

    .line 1294
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1295
    packed-switch p2, :pswitch_data_0

    .line 1330
    :cond_0
    :goto_0
    const-string v0, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1331
    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting;->finish()V

    .line 1333
    :cond_1
    :goto_1
    return-void

    .line 1298
    :pswitch_0
    const-string v0, "Settings/VoiceMailSetting"

    const-string v1, "Neutral button"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1303
    :pswitch_1
    const-string v0, "Settings/VoiceMailSetting"

    const-string v1, "Negative button"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    iget v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mCurrentDialogId:I

    if-ne v0, v2, :cond_0

    .line 1308
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_0

    .line 1313
    :pswitch_2
    const-string v0, "Settings/VoiceMailSetting"

    const-string v1, "Positive button"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    iget v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mCurrentDialogId:I

    if-ne v0, v2, :cond_2

    .line 1318
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_1

    .line 1320
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting;->finish()V

    goto :goto_1

    .line 1295
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 1367
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1369
    const-string v0, "Settings/VoiceMailSetting"

    const-string v1, "Creating activity"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    if-nez p1, :cond_0

    .line 1372
    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    new-instance v2, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;

    invoke-direct {v2}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;-><init>()V

    const-string v3, "voice_mail_setting"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 1378
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .param p1, "id"    # I

    .prologue
    const/16 v9, 0x25b

    const/16 v8, 0x259

    const/4 v7, 0x0

    const v6, 0x7f0b01c2

    .line 1216
    const/16 v5, 0x1f4

    if-eq p1, v5, :cond_0

    const/16 v5, 0x190

    if-eq p1, v5, :cond_0

    const/16 v5, 0x1f5

    if-eq p1, v5, :cond_0

    const/16 v5, 0x1f6

    if-eq p1, v5, :cond_0

    const/16 v5, 0x258

    if-ne p1, v5, :cond_1

    .line 1220
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1223
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0b01ba

    .line 1224
    .local v4, "titleId":I
    sparse-switch p1, :sswitch_data_0

    .line 1255
    const v3, 0x7f0b01bf

    .line 1258
    .local v3, "msgId":I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1262
    :goto_0
    invoke-virtual {p0, v4}, Lcom/mediatek/settings/VoiceMailSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1263
    invoke-virtual {p0, v3}, Lcom/mediatek/settings/VoiceMailSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1264
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1265
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1266
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1269
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 1286
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "msgId":I
    .end local v4    # "titleId":I
    :goto_1
    return-object v1

    .line 1226
    .restart local v0    # "b":Landroid/app/AlertDialog$Builder;
    .restart local v4    # "titleId":I
    :sswitch_0
    const v3, 0x7f0b01c6

    .line 1227
    .restart local v3    # "msgId":I
    const v4, 0x7f0b01a8

    .line 1229
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1234
    .end local v3    # "msgId":I
    :sswitch_1
    const v3, 0x7f0b01ca

    .line 1235
    .restart local v3    # "msgId":I
    const v4, 0x7f0b01a8

    .line 1237
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1240
    .end local v3    # "msgId":I
    :sswitch_2
    const v3, 0x7f0b01c7

    .line 1242
    .restart local v3    # "msgId":I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1245
    .end local v3    # "msgId":I
    :sswitch_3
    const v3, 0x7f0b01c8

    .line 1247
    .restart local v3    # "msgId":I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1250
    .end local v3    # "msgId":I
    :sswitch_4
    const v3, 0x7f0b01c9

    .line 1251
    .restart local v3    # "msgId":I
    const v5, 0x7f0b0320

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1252
    const v5, 0x7f0b0321

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1272
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v3    # "msgId":I
    .end local v4    # "titleId":I
    :cond_1
    if-eq p1, v8, :cond_2

    const/16 v5, 0x25a

    if-eq p1, v5, :cond_2

    if-ne p1, v9, :cond_5

    .line 1274
    :cond_2
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1275
    .local v1, "dialog":Landroid/app/ProgressDialog;
    const v5, 0x7f0b01b9

    invoke-virtual {p0, v5}, Lcom/mediatek/settings/VoiceMailSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1276
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1277
    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1278
    if-ne p1, v8, :cond_3

    const v5, 0x7f0b01bc

    :goto_2
    invoke-virtual {p0, v5}, Lcom/mediatek/settings/VoiceMailSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    if-ne p1, v9, :cond_4

    const v5, 0x7f0b01bd

    goto :goto_2

    :cond_4
    const v5, 0x7f0b01bb

    goto :goto_2

    .line 1286
    .end local v1    # "dialog":Landroid/app/ProgressDialog;
    :cond_5
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_1

    .line 1224
    nop

    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_1
        0x1f4 -> :sswitch_2
        0x1f5 -> :sswitch_3
        0x1f6 -> :sswitch_4
        0x258 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1815
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1816
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/VoiceMailSetting;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1817
    return-void
.end method

.method public onDialogClosed(Lcom/android/phone/settings/EditPhoneNumberPreference;I)V
    .locals 4
    .param p1, "preference"    # Lcom/android/phone/settings/EditPhoneNumberPreference;
    .param p2, "buttonClicked"    # I

    .prologue
    .line 393
    const-string v1, "Settings/VoiceMailSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceClick: request preference click on dialog close: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    instance-of v1, p1, Lcom/android/phone/settings/EditPhoneNumberPreference;

    if-eqz v1, :cond_0

    .line 400
    move-object v0, p1

    .line 402
    .local v0, "epn":Lcom/android/phone/settings/EditPhoneNumberPreference;
    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    if-ne v0, v1, :cond_0

    .line 403
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->handleVMBtnClickRequest()V

    goto :goto_0
.end method

.method public onGetDefaultNumber(Lcom/android/phone/settings/EditPhoneNumberPreference;)Ljava/lang/String;
    .locals 4
    .param p1, "preference"    # Lcom/android/phone/settings/EditPhoneNumberPreference;

    .prologue
    const/4 v1, 0x0

    .line 414
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    if-ne p1, v2, :cond_1

    .line 418
    const-string v2, "Settings/VoiceMailSetting"

    const-string v3, "updating default for voicemail dialog"

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->updateVoiceNumberField()V

    .line 438
    :cond_0
    :goto_0
    return-object v1

    .line 425
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSlotId:I

    invoke-static {v2, v3}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getVoiceMailNumber(Lcom/android/internal/telephony/Phone;I)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "vmDisplay":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 435
    const-string v1, "Settings/VoiceMailSetting"

    const-string v2, "updating default for call forwarding dialogs"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v1, "Settings/VoiceMailSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ongetDefaultnumber, vmDisplay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b01a9

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/VoiceMailSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1483
    invoke-virtual {p0, p1}, Lcom/mediatek/settings/VoiceMailSetting;->setIntent(Landroid/content/Intent;)V

    .line 1484
    iget v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSlotId:I

    .line 1485
    .local v1, "oldId":I
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->initSlotId()V

    .line 1486
    const-string v2, "Settings/VoiceMailSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNewIntent newSlotId, oldSlotID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    iget v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSlotId:I

    if-eq v1, v2, :cond_0

    .line 1488
    invoke-virtual {p0, p1}, Lcom/mediatek/settings/VoiceMailSetting;->startActivity(Landroid/content/Intent;)V

    .line 1489
    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting;->finish()V

    .line 1509
    :goto_0
    return-void

    .line 1494
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "voice_mail_setting"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;

    .line 1495
    .local v0, "fragment":Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    if-eqz v2, :cond_1

    .line 1496
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3, p0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/settings/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1497
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/settings/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1498
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    const v3, 0x7f0b04a5

    invoke-virtual {v2, v3}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 1500
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-eqz v2, :cond_3

    .line 1501
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1502
    const-string v2, "button_voicemail_setting_key"

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    .line 1503
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1504
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "button_voicemail_provider_key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1506
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->initVoiceMailProviders()V

    .line 1508
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->updateVoiceNumberField()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1513
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1514
    .local v0, "itemId":I
    packed-switch v0, :pswitch_data_0

    .line 1521
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 1516
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting;->finish()V

    .line 1517
    const/4 v1, 0x1

    goto :goto_0

    .line 1514
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 374
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForeground:Z

    .line 376
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 1209
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1210
    iput p1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mCurrentDialogId:I

    .line 1211
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1526
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1528
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->updateVoiceNumberField()V

    .line 1529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForeground:Z

    .line 1530
    return-void
.end method

.method onRevertDone()V
    .locals 3

    .prologue
    .line 524
    const-string v0, "Settings/VoiceMailSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Flipping provider key back to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/settings/VoiceMailSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 528
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->updateVoiceNumberField()V

    .line 529
    iget v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMOrFwdSetError:I

    if-eqz v0, :cond_0

    .line 530
    iget v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMOrFwdSetError:I

    invoke-direct {p0, v0}, Lcom/mediatek/settings/VoiceMailSetting;->showVMDialog(I)V

    .line 531
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMOrFwdSetError:I

    .line 533
    :cond_0
    return-void
.end method

.method setVMNumberWithCarrier()V
    .locals 5

    .prologue
    .line 938
    const-string v0, "Settings/VoiceMailSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save voicemail #: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSlotId:I

    invoke-static {v1, v2}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getVoiceMailAlphaTag(Lcom/android/internal/telephony/Phone;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSlotId:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->setVoiceMailNumber(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    .line 944
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 444
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 446
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 454
    :goto_0
    return-void

    .line 451
    :cond_0
    const-string v0, "Settings/VoiceMailSetting"

    const-string v1, "startSubActivity: starting requested subactivity"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
