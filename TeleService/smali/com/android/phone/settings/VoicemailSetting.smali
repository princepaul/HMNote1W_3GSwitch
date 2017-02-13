.class public Lcom/android/phone/settings/VoicemailSetting;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "VoicemailSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/phone/settings/EditPhoneNumberPreference$OnDialogClosedListener;
.implements Lcom/android/phone/settings/EditPhoneNumberPreference$GetDefaultNumberListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;,
        Lcom/android/phone/settings/VoicemailSetting$VoiceMailProvider;
    }
.end annotation


# static fields
.field public static final ACTION_ADD_VOICEMAIL:Ljava/lang/String; = "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

.field public static final ACTION_CONFIGURE_VOICEMAIL:Ljava/lang/String; = "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

.field private static final BUTTON_VOICEMAIL_KEY:Ljava/lang/String; = "button_voicemail"

.field private static final BUTTON_VOICEMAIL_PROVIDER_KEY:Ljava/lang/String; = "button_voicemail_provider"

.field private static final DBG:Z = false

.field public static final DEFAULT_VM_PROVIDER_KEY:Ljava/lang/String; = ""

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

.field private static final FW_GET_RESPONSE_ERROR:I = 0x5de

.field private static final FW_SET_RESPONSE_ERROR:I = 0x5dd

.field public static final IGNORE_PROVIDER_EXTRA:Ljava/lang/String; = "com.android.phone.ProviderToIgnore"

.field private static final LOG_TAG:Ljava/lang/String; = "VoicemailSetting"

.field private static final MSG_FW_GET_EXCEPTION:I = 0x192

.field private static final MSG_FW_SET_EXCEPTION:I = 0x191

.field private static final MSG_OK:I = 0x64

.field private static final MSG_UPDATE_VOICEMAIL_RINGTONE_SUMMARY:I = 0x2

.field private static final MSG_VM_EXCEPTION:I = 0x190

.field private static final MSG_VM_NOCHANGE:I = 0x2bc

.field private static final MSG_VM_OK:I = 0x258

.field private static final NUM_PROJECTION:[Ljava/lang/String;

.field public static final SIGNOUT_EXTRA:Ljava/lang/String; = "com.android.phone.Signout"

.field private static final VM_NOCHANGE_ERROR:I = 0x578

.field private static final VM_NUMBERS_SHARED_PREFERENCES_NAME:Ljava/lang/String; = "vm_numbers"

.field public static final VM_NUMBER_EXTRA:Ljava/lang/String; = "com.android.phone.VoicemailNumber"

.field public static final VM_NUMBER_TAG:Ljava/lang/String; = "#VMNumber"

.field private static final VM_RESPONSE_ERROR:I = 0x5dc

.field private static final VOICEMAIL_DIALOG_CONFIRM:I = 0x640

.field private static final VOICEMAIL_FWD_READING_DIALOG:I = 0x642

.field private static final VOICEMAIL_FWD_SAVING_DIALOG:I = 0x641

.field private static final VOICEMAIL_PREF_ID:I = 0x1

.field private static final VOICEMAIL_PROVIDER_CFG_ID:I = 0x2

.field private static final VOICEMAIL_REVERTING_DIALOG:I = 0x643

.field private static final VOICEMAIL_VIBRATION_ALWAYS:Ljava/lang/String; = "always"

.field private static final VOICEMAIL_VIBRATION_NEVER:Ljava/lang/String; = "never"


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

.field private mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

.field mNewVMNumber:Ljava/lang/String;

.field private mOldVmNumber:Ljava/lang/String;

.field mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPreviousVMProviderKey:Ljava/lang/String;

.field private mReadingSettingsForDefaultProvider:Z

.field private final mRevertOptionComplete:Landroid/os/Handler;

.field private final mRingtoneLookupComplete:Landroid/os/Handler;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private final mSetOptionComplete:Landroid/os/Handler;

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
            "Lcom/android/phone/settings/VoicemailSetting$VoiceMailProvider;",
            ">;"
        }
    .end annotation
.end field

.field mVoicemailChangeResult:Landroid/os/AsyncResult;

.field private mVoicemailNotificationRingtone:Landroid/preference/Preference;

.field private mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

.field private mVoicemailProviders:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 99
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/settings/VoicemailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 126
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/settings/VoicemailSetting;->NUM_PROJECTION:[Ljava/lang/String;

    .line 201
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/settings/VoicemailSetting;->FORWARDING_SETTINGS_REASONS:[I

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
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 174
    new-instance v0, Lcom/android/phone/settings/VoicemailSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/VoicemailSetting$1;-><init>(Lcom/android/phone/settings/VoicemailSetting;)V

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mRingtoneLookupComplete:Landroid/os/Handler;

    .line 287
    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 293
    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 300
    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 305
    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 310
    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 315
    iput v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mCurrentDialogId:I

    .line 321
    iput-boolean v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mVMProviderSettingsForced:Z

    .line 327
    iput-boolean v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 333
    iput-boolean v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mVMChangeCompletedSuccesfully:Z

    .line 339
    iput-boolean v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mFwdChangesRequireRollback:Z

    .line 345
    iput v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mVMOrFwdSetError:I

    .line 355
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mVMProvidersData:Ljava/util/Map;

    .line 381
    iput-boolean v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mReadingSettingsForDefaultProvider:Z

    .line 783
    new-instance v0, Lcom/android/phone/settings/VoicemailSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/VoicemailSetting$2;-><init>(Lcom/android/phone/settings/VoicemailSetting;)V

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mGetOptionComplete:Landroid/os/Handler;

    .line 952
    new-instance v0, Lcom/android/phone/settings/VoicemailSetting$3;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/VoicemailSetting$3;-><init>(Lcom/android/phone/settings/VoicemailSetting;)V

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mSetOptionComplete:Landroid/os/Handler;

    .line 1012
    new-instance v0, Lcom/android/phone/settings/VoicemailSetting$4;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/VoicemailSetting$4;-><init>(Lcom/android/phone/settings/VoicemailSetting;)V

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mRevertOptionComplete:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/VoicemailSetting;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/VoicemailSetting;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailNotificationRingtone:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/settings/VoicemailSetting;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/VoicemailSetting;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/settings/VoicemailSetting;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/VoicemailSetting;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/settings/VoicemailSetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/VoicemailSetting;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->checkForwardingCompleted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/settings/VoicemailSetting;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/VoicemailSetting;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/settings/VoicemailSetting;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/VoicemailSetting;
    .param p1, "x1"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/phone/settings/VoicemailSetting;->dismissDialogSafely(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/settings/VoicemailSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/VoicemailSetting;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->handleSetVMOrFwdMessage()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/settings/VoicemailSetting;ILandroid/preference/Preference;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/VoicemailSetting;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/preference/Preference;
    .param p3, "x3"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/settings/VoicemailSetting;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method private checkForwardingCompleted()Z
    .locals 4

    .prologue
    .line 1050
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 1051
    const/4 v2, 0x1

    .line 1063
    .local v2, "result":Z
    :cond_0
    :goto_0
    return v2

    .line 1055
    .end local v2    # "result":Z
    :cond_1
    const/4 v2, 0x1

    .line 1056
    .restart local v2    # "result":Z
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

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

    .line 1057
    .local v1, "reason":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1058
    const/4 v2, 0x0

    .line 1059
    goto :goto_0
.end method

.method private checkFwdChangeSuccess()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1069
    const/4 v3, 0x0

    .line 1070
    .local v3, "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1072
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1073
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1074
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v1, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1075
    .local v1, "exception":Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    .line 1076
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1077
    if-nez v3, :cond_1

    .line 1078
    const-string v3, ""

    .line 1083
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    .end local v1    # "exception":Ljava/lang/Throwable;
    :cond_1
    return-object v3
.end method

.method private checkVMChangeSuccess()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1090
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 1091
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1092
    .local v0, "msg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1093
    const-string v0, ""

    .line 1097
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
    .line 1681
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v0, :cond_0

    .line 1688
    :goto_0
    return-void

    .line 1684
    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

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
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 729
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/phone/settings/VoicemailSetting;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    :goto_0
    return-void

    .line 730
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getCurrentVoicemailProviderKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1691
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1692
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "key":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "key":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private handleSetVMOrFwdMessage()V
    .locals 5

    .prologue
    .line 1104
    const/4 v2, 0x1

    .line 1105
    .local v2, "success":Z
    const/4 v1, 0x0

    .line 1106
    .local v1, "fwdFailure":Z
    const-string v0, ""

    .line 1107
    .local v0, "exceptionMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 1108
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    .line 1109
    if-eqz v0, :cond_0

    .line 1110
    const/4 v2, 0x0

    .line 1111
    const/4 v1, 0x1

    .line 1114
    :cond_0
    if-eqz v2, :cond_1

    .line 1115
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    .line 1116
    if-eqz v0, :cond_1

    .line 1117
    const/4 v2, 0x0

    .line 1120
    :cond_1
    if-eqz v2, :cond_2

    .line 1122
    const/16 v3, 0x258

    invoke-direct {p0, v3}, Lcom/android/phone/settings/VoicemailSetting;->handleVMAndFwdSetSuccess(I)V

    .line 1123
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->updateVoiceNumberField()V

    .line 1133
    :goto_0
    return-void

    .line 1125
    :cond_2
    if-eqz v1, :cond_3

    .line 1126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change FW failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/settings/VoicemailSetting;->log(Ljava/lang/String;)V

    .line 1127
    const/16 v3, 0x191

    invoke-direct {p0, v3}, Lcom/android/phone/settings/VoicemailSetting;->handleVMOrFwdSetError(I)V

    goto :goto_0

    .line 1129
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change VM failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/settings/VoicemailSetting;->log(Ljava/lang/String;)V

    .line 1130
    const/16 v3, 0x190

    invoke-direct {p0, v3}, Lcom/android/phone/settings/VoicemailSetting;->handleVMOrFwdSetError(I)V

    goto :goto_0
.end method

.method private handleVMAndFwdSetSuccess(I)V
    .locals 1
    .param p1, "msgId"    # I

    .prologue
    .line 1148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1149
    invoke-direct {p0, p1}, Lcom/android/phone/settings/VoicemailSetting;->showVMDialog(I)V

    .line 1150
    return-void
.end method

.method private handleVMBtnClickRequest()V
    .locals 4

    .prologue
    .line 691
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/settings/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/phone/settings/VoicemailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/settings/VoicemailSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v0, v1}, Lcom/android/phone/settings/VoicemailSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;)V

    .line 695
    return-void
.end method

.method private handleVMOrFwdSetError(I)V
    .locals 2
    .param p1, "msgId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1136
    iget-boolean v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mChangingVMorFwdDueToProviderChange:Z

    if-eqz v0, :cond_0

    .line 1137
    iput p1, p0, Lcom/android/phone/settings/VoicemailSetting;->mVMOrFwdSetError:I

    .line 1138
    iput-boolean v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1139
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->switchToPreviousVoicemailProvider()V

    .line 1145
    :goto_0
    return-void

    .line 1142
    :cond_0
    iput-boolean v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1143
    invoke-direct {p0, p1}, Lcom/android/phone/settings/VoicemailSetting;->showVMDialog(I)V

    .line 1144
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->updateVoiceNumberField()V

    goto :goto_0
.end method

.method private infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;
    .locals 6
    .param p1, "infos"    # [Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "reason"    # I

    .prologue
    .line 876
    const/4 v4, 0x0

    .line 877
    .local v4, "result":Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz p1, :cond_0

    .line 878
    move-object v0, p1

    .local v0, "arr$":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 879
    .local v2, "info":Lcom/android/internal/telephony/CallForwardInfo;
    iget v5, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v5, p2, :cond_1

    .line 880
    move-object v4, v2

    .line 885
    .end local v0    # "arr$":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v1    # "i$":I
    .end local v2    # "info":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v3    # "len$":I
    :cond_0
    return-object v4

    .line 878
    .restart local v0    # "arr$":[Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v1    # "i$":I
    .restart local v2    # "info":Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v3    # "len$":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initVoiceMailProviders()V
    .locals 22

    .prologue
    .line 1496
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/VoicemailSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    const-string v19, "vm_numbers"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/VoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v20

    invoke-static/range {v19 .. v20}, Lcom/android/phone/PhoneUtils;->getPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/settings/VoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    .line 1501
    const/4 v14, 0x0

    .line 1502
    .local v14, "providerToIgnore":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/VoicemailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1504
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/VoicemailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "com.android.phone.ProviderToIgnore"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1505
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/VoicemailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "com.android.phone.ProviderToIgnore"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1508
    :cond_0
    if-eqz v14, :cond_1

    .line 1509
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/settings/VoicemailSetting;->deleteSettingsForVoicemailProvider(Ljava/lang/String;)V

    .line 1513
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/VoicemailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->clear()V

    .line 1516
    const v18, 0x7f0b01cc

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/VoicemailSetting;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1517
    .local v10, "myCarrier":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/VoicemailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v18, v0

    const-string v19, ""

    new-instance v20, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProvider;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v10, v2}, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProvider;-><init>(Lcom/android/phone/settings/VoicemailSetting;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/VoicemailSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 1521
    .local v12, "pm":Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1522
    .local v7, "intent":Landroid/content/Intent;
    const-string v18, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1523
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v7, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 1524
    .local v15, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v9, v18, 0x1

    .line 1528
    .local v9, "len":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_3

    .line 1529
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 1530
    .local v16, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1531
    .local v3, "currentActivityInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/settings/VoicemailSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v8

    .line 1533
    .local v8, "key":Ljava/lang/String;
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1535
    add-int/lit8 v9, v9, -0x1

    .line 1528
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1538
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1539
    .local v11, "nameForDisplay":Ljava/lang/String;
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 1540
    .local v13, "providerIntent":Landroid/content/Intent;
    const-string v18, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1541
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/VoicemailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProvider;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v13}, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProvider;-><init>(Lcom/android/phone/settings/VoicemailSetting;Ljava/lang/String;Landroid/content/Intent;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1551
    .end local v3    # "currentActivityInfo":Landroid/content/pm/ActivityInfo;
    .end local v8    # "key":Ljava/lang/String;
    .end local v11    # "nameForDisplay":Ljava/lang/String;
    .end local v13    # "providerIntent":Landroid/content/Intent;
    .end local v16    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    new-array v4, v9, [Ljava/lang/String;

    .line 1552
    .local v4, "entries":[Ljava/lang/String;
    new-array v0, v9, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1553
    .local v17, "values":[Ljava/lang/String;
    const/16 v18, 0x0

    aput-object v10, v4, v18

    .line 1554
    const/16 v18, 0x0

    const-string v19, ""

    aput-object v19, v17, v18

    .line 1555
    const/4 v5, 0x1

    .line 1556
    .local v5, "entryIdx":I
    const/4 v6, 0x0

    :goto_2
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_5

    .line 1557
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/settings/VoicemailSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v8

    .line 1558
    .restart local v8    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/VoicemailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 1556
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1561
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/VoicemailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProvider;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProvider;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v4, v5

    .line 1562
    aput-object v8, v17, v5

    .line 1563
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1566
    .end local v8    # "key":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1569
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/settings/VoicemailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/settings/VoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 1570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/VoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/settings/VoicemailSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 1571
    return-void
.end method

.method private isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z
    .locals 2
    .param p1, "oldInfo"    # Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "newInfo"    # Lcom/android/internal/telephony/CallForwardInfo;

    .prologue
    .line 890
    const/4 v0, 0x1

    .line 891
    .local v0, "result":Z
    iget v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_0

    .line 894
    if-eqz p1, :cond_0

    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_0

    .line 895
    const/4 v0, 0x0

    .line 898
    :cond_0
    return v0
.end method

.method private loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;
    .locals 12
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 1642
    iget-object v7, p0, Lcom/android/phone/settings/VoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

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

    .line 1644
    .local v6, "vmNumberSetting":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 1673
    :goto_0
    return-object v5

    .line 1649
    :cond_0
    sget-object v0, Lcom/android/phone/settings/VoicemailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1650
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

    .line 1651
    .local v1, "fwdKey":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/settings/VoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

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

    .line 1652
    .local v2, "fwdLen":I
    if-lez v2, :cond_1

    .line 1653
    new-array v0, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1654
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v0

    if-ge v3, v7, :cond_1

    .line 1655
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

    .line 1656
    .local v4, "settingKey":Ljava/lang/String;
    new-instance v7, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v7}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v7, v0, v3

    .line 1657
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/settings/VoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

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

    .line 1659
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/settings/VoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

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

    .line 1662
    aget-object v7, v0, v3

    const/4 v8, 0x1

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1663
    aget-object v7, v0, v3

    const/16 v8, 0x91

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 1664
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/settings/VoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

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

    .line 1666
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/settings/VoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

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

    .line 1654
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1671
    .end local v3    # "i":I
    .end local v4    # "settingKey":Ljava/lang/String;
    :cond_1
    new-instance v5, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;

    invoke-direct {v5, p0, v6, v0}, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/settings/VoicemailSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 1673
    .local v5, "settings":Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;
    goto/16 :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1442
    const-string v0, "VoicemailSetting"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    return-void
.end method

.method private lookupRingtoneName()V
    .locals 2

    .prologue
    .line 1438
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1439
    return-void
.end method

.method private makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "ai"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 1574
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method private maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newSettings"    # Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;

    .prologue
    .line 1604
    iget-object v7, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v7, :cond_1

    .line 1631
    :cond_0
    :goto_0
    return-void

    .line 1607
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/settings/VoicemailSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;

    move-result-object v0

    .line 1608
    .local v0, "curSettings":Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;
    invoke-virtual {p2, v0}, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1613
    iget-object v7, p0, Lcom/android/phone/settings/VoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1614
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

    iget-object v8, p2, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1615
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#FWDSettings"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1616
    .local v3, "fwdKey":Ljava/lang/String;
    iget-object v5, p2, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1617
    .local v5, "s":[Lcom/android/internal/telephony/CallForwardInfo;
    sget-object v7, Lcom/android/phone/settings/VoicemailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v5, v7, :cond_2

    .line 1618
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

    .line 1619
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v7, v5

    if-ge v4, v7, :cond_3

    .line 1620
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

    .line 1621
    .local v6, "settingKey":Ljava/lang/String;
    aget-object v2, v5, v4

    .line 1622
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

    .line 1623
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

    .line 1624
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

    .line 1625
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

    .line 1619
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 1628
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

    .line 1630
    :cond_3
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method public static migrateVoicemailVibrationSettingsIfNeeded(Landroid/content/SharedPreferences;I)Z
    .locals 6
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "slotId"    # I

    .prologue
    .line 1417
    const-string v4, "button_voicemail_notification_vibrate_key"

    invoke-static {v4, p1}, Lcom/android/phone/PhoneUtils;->getPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1419
    .local v2, "vmVibrateKey":Ljava/lang/String;
    invoke-interface {p0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1420
    const-string v4, "button_voicemail_notification_vibrate_when_key"

    const-string v5, "never"

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1425
    .local v1, "vibrateWhen":Ljava/lang/String;
    const-string v4, "always"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1426
    .local v3, "voicemailVibrate":Z
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1427
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1428
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1429
    const/4 v4, 0x1

    .line 1431
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "vibrateWhen":Ljava/lang/String;
    .end local v3    # "voicemailVibrate":Z
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private resetForwardingChangeState()V
    .locals 1

    .prologue
    .line 902
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 903
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 904
    return-void
.end method

.method private saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newSettings"    # Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;

    .prologue
    const/4 v5, 0x0

    .line 740
    iget-object v1, p2, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mNewVMNumber:Ljava/lang/String;

    .line 742
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mNewVMNumber:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 743
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mNewVMNumber:Ljava/lang/String;

    .line 746
    :cond_0
    iget-object v1, p2, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 752
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 754
    sget-object v1, Lcom/android/phone/settings/VoicemailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 758
    :cond_1
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v2, Lcom/android/phone/settings/VoicemailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-ne v1, v2, :cond_2

    .line 759
    const/16 v1, 0x2bc

    invoke-direct {p0, v1}, Lcom/android/phone/settings/VoicemailSetting;->showVMDialog(I)V

    .line 781
    :goto_0
    return-void

    .line 763
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/phone/settings/VoicemailSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;)V

    .line 764
    iput-boolean v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mVMChangeCompletedSuccesfully:Z

    .line 765
    iput-boolean v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mFwdChangesRequireRollback:Z

    .line 766
    iput v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mVMOrFwdSetError:I

    .line 767
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 768
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mReadingSettingsForDefaultProvider:Z

    .line 771
    sget-object v1, Lcom/android/phone/settings/VoicemailSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v1, v1

    new-array v1, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 772
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/android/phone/settings/VoicemailSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 773
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 774
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/android/phone/settings/VoicemailSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mGetOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f6

    invoke-virtual {v3, v4, v0, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 772
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 777
    :cond_3
    const/16 v1, 0x642

    invoke-direct {p0, v1}, Lcom/android/phone/settings/VoicemailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 779
    .end local v0    # "i":I
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_0
.end method

.method private saveVoiceMailAndForwardingNumberStage2()V
    .locals 12

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 909
    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 910
    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 911
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v1, Lcom/android/phone/settings/VoicemailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v0, v1, :cond_3

    .line 912
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->resetForwardingChangeState()V

    .line 913
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v0, v0

    if-ge v8, v0, :cond_2

    .line 914
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v7, v0, v8

    .line 916
    .local v7, "fi":Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/settings/VoicemailSetting;->infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/android/phone/settings/VoicemailSetting;->isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v6

    .line 919
    .local v6, "doUpdate":Z
    if-eqz v6, :cond_0

    .line 921
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 923
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    :goto_1
    iget v2, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v7, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v10, 0x1f5

    iget v11, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-virtual {v5, v10, v11, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 913
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move v1, v9

    .line 923
    goto :goto_1

    .line 934
    .end local v6    # "doUpdate":Z
    .end local v7    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    :cond_2
    const/16 v0, 0x641

    invoke-direct {p0, v0}, Lcom/android/phone/settings/VoicemailSetting;->showDialogIfForeground(I)V

    .line 939
    .end local v8    # "i":I
    :goto_2
    return-void

    .line 937
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSetting;->setVMNumberWithCarrier()V

    goto :goto_2
.end method

.method private showDialogIfForeground(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 722
    iget-boolean v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mForeground:Z

    if-eqz v0, :cond_0

    .line 723
    invoke-virtual {p0, p1}, Lcom/android/phone/settings/VoicemailSetting;->showDialog(I)V

    .line 725
    :cond_0
    return-void
.end method

.method private showVMDialog(I)V
    .locals 1
    .param p1, "msgStatus"    # I

    .prologue
    .line 1302
    sparse-switch p1, :sswitch_data_0

    .line 1324
    :goto_0
    return-void

    .line 1306
    :sswitch_0
    const/16 v0, 0x5dc

    invoke-direct {p0, v0}, Lcom/android/phone/settings/VoicemailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1309
    :sswitch_1
    const/16 v0, 0x5dd

    invoke-direct {p0, v0}, Lcom/android/phone/settings/VoicemailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1312
    :sswitch_2
    const/16 v0, 0x5de

    invoke-direct {p0, v0}, Lcom/android/phone/settings/VoicemailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1315
    :sswitch_3
    const/16 v0, 0x578

    invoke-direct {p0, v0}, Lcom/android/phone/settings/VoicemailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1318
    :sswitch_4
    const/16 v0, 0x640

    invoke-direct {p0, v0}, Lcom/android/phone/settings/VoicemailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1302
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
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1586
    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 1587
    .local v6, "adapter":Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_0
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 1588
    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 1589
    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1594
    :cond_0
    return-void

    .line 1587
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private switchToPreviousVoicemailProvider()V
    .locals 14

    .prologue
    const/4 v12, 0x0

    .line 511
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 512
    iget-boolean v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mVMChangeCompletedSuccesfully:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_5

    .line 514
    :cond_0
    const/16 v0, 0x643

    invoke-direct {p0, v0}, Lcom/android/phone/settings/VoicemailSetting;->showDialogIfForeground(I)V

    .line 515
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/settings/VoicemailSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;

    move-result-object v9

    .line 517
    .local v9, "prevSettings":Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;
    iget-boolean v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mVMChangeCompletedSuccesfully:Z

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, v9, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mNewVMNumber:Ljava/lang/String;

    .line 520
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 525
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_6

    .line 527
    if-nez v9, :cond_3

    const/4 v8, 0x0

    .line 529
    .local v8, "prevFwdSettings":[Lcom/android/internal/telephony/CallForwardInfo;
    :goto_0
    if-eqz v8, :cond_6

    .line 530
    iget-object v11, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 532
    .local v11, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->resetForwardingChangeState()V

    .line 533
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v0, v8

    if-ge v7, v0, :cond_6

    .line 534
    aget-object v6, v8, v7

    .line 538
    .local v6, "fi":Lcom/android/internal/telephony/CallForwardInfo;
    iget v0, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/AsyncResult;

    .line 539
    .local v10, "result":Landroid/os/AsyncResult;
    if-eqz v10, :cond_2

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 540
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 541
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v1, 0x3

    :goto_2
    iget v2, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v6, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v13, 0x1f5

    invoke-virtual {v5, v13, v7, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 533
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 527
    .end local v6    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v7    # "i":I
    .end local v8    # "prevFwdSettings":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v10    # "result":Landroid/os/AsyncResult;
    .end local v11    # "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_3
    iget-object v8, v9, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    goto :goto_0

    .restart local v6    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v7    # "i":I
    .restart local v8    # "prevFwdSettings":[Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v10    # "result":Landroid/os/AsyncResult;
    .restart local v11    # "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_4
    move v1, v12

    .line 541
    goto :goto_2

    .line 556
    .end local v6    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v7    # "i":I
    .end local v8    # "prevFwdSettings":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v9    # "prevSettings":Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;
    .end local v10    # "result":Landroid/os/AsyncResult;
    .end local v11    # "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSetting;->onRevertDone()V

    .line 559
    :cond_6
    return-void
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "preference"    # Landroid/preference/Preference;
    .param p3, "msg"    # I

    .prologue
    .line 1451
    if-nez p2, :cond_0

    .line 1455
    :goto_0
    return-void

    .line 1452
    :cond_0
    invoke-static {p0, p1}, Landroid/media/ExtraRingtoneManager;->getRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 1453
    .local v0, "ringtoneUri":Landroid/net/Uri;
    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/media/ExtraRingtone;->getRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v1

    .line 1454
    .local v1, "summary":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mRingtoneLookupComplete:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mRingtoneLookupComplete:Landroid/os/Handler;

    invoke-virtual {v3, p3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private updateVMPreferenceWidgets(Ljava/lang/String;)V
    .locals 7
    .param p1, "currentProviderSetting"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1463
    move-object v0, p1

    .line 1464
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProvider;

    .line 1470
    .local v1, "provider":Lcom/android/phone/settings/VoicemailSetting$VoiceMailProvider;
    if-nez v1, :cond_0

    .line 1471
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const v4, 0x7f0b01cb

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/VoicemailSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1472
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    invoke-virtual {v3, v5}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setEnabled(Z)V

    .line 1473
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setIntent(Landroid/content/Intent;)V

    .line 1475
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1484
    :goto_0
    return-void

    .line 1477
    :cond_0
    iget-object v2, v1, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProvider;->name:Ljava/lang/String;

    .line 1478
    .local v2, "providerName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1479
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    invoke-virtual {v3, v6}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setEnabled(Z)V

    .line 1480
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    iget-object v4, v1, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setIntent(Landroid/content/Intent;)V

    .line 1482
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateVoiceNumberField()V
    .locals 3

    .prologue
    .line 1157
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    if-nez v1, :cond_0

    .line 1169
    :goto_0
    return-void

    .line 1161
    :cond_0
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1162
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mOldVmNumber:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1163
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1165
    :cond_1
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/settings/EditPhoneNumberPreference;

    .line 1166
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1168
    .local v0, "summary":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1166
    .end local v0    # "summary":Ljava/lang/String;
    :cond_2
    const v1, 0x7f0b04a8

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/VoicemailSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "idx"    # I

    .prologue
    const/16 v6, 0x642

    const/4 v9, 0x0

    .line 797
    const/4 v2, 0x0

    .line 798
    .local v2, "error":Ljava/lang/Throwable;
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_0

    .line 801
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 803
    :cond_0
    iget-object v5, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 806
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v2    # "error":Ljava/lang/Throwable;
    check-cast v2, Ljava/lang/Throwable;

    .line 810
    .restart local v2    # "error":Ljava/lang/Throwable;
    :cond_1
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    if-nez v5, :cond_3

    .line 873
    :cond_2
    :goto_0
    return-void

    .line 816
    :cond_3
    if-eqz v2, :cond_4

    .line 818
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 819
    invoke-direct {p0, v6}, Lcom/android/phone/settings/VoicemailSetting;->dismissDialogSafely(I)V

    .line 820
    const/16 v5, 0x192

    invoke-direct {p0, v5}, Lcom/android/phone/settings/VoicemailSetting;->showVMDialog(I)V

    goto :goto_0

    .line 825
    :cond_4
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v0, v5

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 826
    .local v0, "cfInfoArray":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v3, 0x0

    .line 827
    .local v3, "fi":Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_5

    .line 828
    aget-object v5, v0, v4

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_9

    .line 829
    aget-object v3, v0, v4

    .line 833
    :cond_5
    if-nez v3, :cond_a

    .line 838
    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    .end local v3    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 839
    .restart local v3    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    iput v9, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 840
    sget-object v5, Lcom/android/phone/settings/VoicemailSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v5, v5, p2

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 841
    const/4 v5, 0x1

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 850
    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v3, v5, p2

    .line 853
    const/4 v1, 0x1

    .line 854
    .local v1, "done":Z
    const/4 v4, 0x0

    :goto_3
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v5, v5

    if-ge v4, v5, :cond_7

    .line 855
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v5, v5, v4

    if-nez v5, :cond_c

    .line 856
    const/4 v1, 0x0

    .line 860
    :cond_7
    if-eqz v1, :cond_2

    .line 862
    invoke-direct {p0, v6}, Lcom/android/phone/settings/VoicemailSetting;->dismissDialogSafely(I)V

    .line 863
    iget-boolean v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mReadingSettingsForDefaultProvider:Z

    if-eqz v5, :cond_8

    .line 864
    const-string v5, ""

    new-instance v6, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;

    iget-object v7, p0, Lcom/android/phone/settings/VoicemailSetting;->mOldVmNumber:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v6, p0, v7, v8}, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/settings/VoicemailSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v5, v6}, Lcom/android/phone/settings/VoicemailSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;)V

    .line 867
    iput-boolean v9, p0, Lcom/android/phone/settings/VoicemailSetting;->mReadingSettingsForDefaultProvider:Z

    .line 869
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_0

    .line 827
    .end local v1    # "done":Z
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 844
    :cond_a
    iget-object v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v5, :cond_b

    iget-object v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    .line 845
    :cond_b
    iput v9, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    goto :goto_2

    .line 854
    .restart local v1    # "done":Z
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 18
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 578
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    .line 579
    const/4 v9, 0x0

    .line 583
    .local v9, "failure":Z
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/phone/settings/VoicemailSetting;->mVMProviderSettingsForced:Z

    .line 584
    .local v13, "isVMProviderSettingsForced":Z
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/settings/VoicemailSetting;->mVMProviderSettingsForced:Z

    .line 586
    const/16 v17, 0x0

    .line 587
    .local v17, "vmNum":Ljava/lang/String;
    const/4 v2, -0x1

    move/from16 v0, p2

    if-eq v0, v2, :cond_2

    .line 589
    const/4 v9, 0x1

    .line 617
    :cond_0
    :goto_0
    if-eqz v9, :cond_7

    .line 619
    if-eqz v13, :cond_1

    .line 620
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/settings/VoicemailSetting;->switchToPreviousVoicemailProvider()V

    .line 682
    .end local v9    # "failure":Z
    .end local v13    # "isVMProviderSettingsForced":Z
    .end local v17    # "vmNum":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 591
    .restart local v9    # "failure":Z
    .restart local v13    # "isVMProviderSettingsForced":Z
    .restart local v17    # "vmNum":Ljava/lang/String;
    :cond_2
    if-nez p3, :cond_3

    .line 593
    const/4 v9, 0x1

    goto :goto_0

    .line 595
    :cond_3
    const-string v2, "com.android.phone.Signout"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 597
    if-eqz v13, :cond_4

    .line 599
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/settings/VoicemailSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_1

    .line 601
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/settings/VoicemailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v16

    .line 603
    .local v16, "victim":Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    const-string v2, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 604
    .local v12, "i":Landroid/content/Intent;
    const-string v2, "com.android.phone.ProviderToIgnore"

    move-object/from16 v0, v16

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    const/high16 v2, 0x4000000

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 606
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/phone/settings/VoicemailSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 610
    .end local v12    # "i":Landroid/content/Intent;
    .end local v16    # "victim":Ljava/lang/String;
    :cond_5
    const-string v2, "com.android.phone.VoicemailNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 611
    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 613
    :cond_6
    const/4 v9, 0x1

    goto :goto_0

    .line 626
    :cond_7
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/phone/settings/VoicemailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 627
    const-string v2, "com.android.phone.ForwardingNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 631
    .local v10, "fwdNum":Ljava/lang/String;
    const-string v2, "com.android.phone.ForwardingNumberTime"

    const/16 v3, 0x14

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 635
    .local v11, "fwdNumTime":I
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/settings/VoicemailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1, v10, v11}, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/settings/VoicemailSetting;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/settings/VoicemailSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;)V

    goto :goto_1

    .line 640
    .end local v9    # "failure":Z
    .end local v10    # "fwdNum":Ljava/lang/String;
    .end local v11    # "fwdNumTime":I
    .end local v13    # "isVMProviderSettingsForced":Z
    .end local v17    # "vmNum":Ljava/lang/String;
    :cond_8
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 645
    const/4 v8, 0x0

    .line 646
    .local v8, "cursor":Landroid/database/Cursor;
    const-string v14, ""

    .line 649
    .local v14, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    .line 650
    .local v15, "uri":Landroid/net/Uri;
    const-string v2, "VoicemailSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 652
    invoke-virtual {v15}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v14

    .line 670
    :goto_2
    if-eqz v8, :cond_9

    .line 671
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 675
    .end local v15    # "uri":Landroid/net/Uri;
    :cond_9
    :goto_3
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 677
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    invoke-virtual {v2, v14}, Lcom/android/phone/settings/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 655
    .restart local v15    # "uri":Landroid/net/Uri;
    :cond_a
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/VoicemailSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/phone/settings/VoicemailSetting;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 657
    if-eqz v8, :cond_b

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_c

    .line 658
    :cond_b
    const-string v2, "onActivityResult: bad contact data, no results found."

    invoke-static {v2}, Lcom/android/phone/settings/VoicemailSetting;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 670
    if-eqz v8, :cond_1

    .line 671
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 661
    :cond_c
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v14

    goto :goto_2

    .line 664
    .end local v15    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 670
    if-eqz v8, :cond_9

    .line 671
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 666
    :catch_1
    move-exception v2

    .line 670
    if-eqz v8, :cond_9

    .line 671
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 670
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_d

    .line 671
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v2

    .line 675
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/16 v1, 0x5de

    .line 1266
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1267
    packed-switch p2, :pswitch_data_0

    .line 1295
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1296
    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSetting;->finish()V

    .line 1298
    :cond_1
    :goto_1
    return-void

    .line 1273
    :pswitch_1
    iget v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_0

    .line 1276
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_0

    .line 1281
    :pswitch_2
    iget v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_2

    .line 1284
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_1

    .line 1286
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSetting;->finish()V

    goto :goto_1

    .line 1267
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 1332
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1335
    invoke-static {p0}, Lcom/android/phone/settings/SimPickerPreference;->showSimPicker(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1397
    :cond_0
    :goto_0
    return-void

    .line 1338
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getDefaultSubscription()I

    move-result v3

    invoke-static {v2, v3}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v1

    .line 1340
    .local v1, "slotId":I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {v1}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1342
    const v2, 0x7f05003f

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/VoicemailSetting;->addPreferencesFromResource(I)V

    .line 1345
    const-string v2, "button_voicemail"

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/VoicemailSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/settings/EditPhoneNumberPreference;

    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    .line 1346
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    if-eqz v2, :cond_2

    .line 1347
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    invoke-virtual {v2, p0, v4, p0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/settings/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1348
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/settings/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1349
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    const v3, 0x7f0b04a5

    invoke-virtual {v2, v3}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 1352
    :cond_2
    const-string v2, "button_voicemail_provider"

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/VoicemailSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    .line 1353
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-eqz v2, :cond_3

    .line 1354
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1355
    const-string v2, "button_voicemail_notification_ringtone_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/VoicemailSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailNotificationRingtone:Landroid/preference/Preference;

    .line 1357
    const-string v2, "button_voicemail_notification_vibrate_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/VoicemailSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    .line 1359
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1360
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->initVoiceMailProviders()V

    .line 1369
    :cond_3
    if-nez p1, :cond_4

    .line 1370
    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-eqz v2, :cond_4

    .line 1372
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-le v2, v4, :cond_5

    .line 1373
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-direct {p0, v2}, Lcom/android/phone/settings/VoicemailSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    .line 1380
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->updateVoiceNumberField()V

    .line 1381
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mVMProviderSettingsForced:Z

    .line 1383
    new-instance v2, Lcom/android/phone/settings/VoicemailSetting$5;

    invoke-direct {v2, p0}, Lcom/android/phone/settings/VoicemailSetting$5;-><init>(Lcom/android/phone/settings/VoicemailSetting;)V

    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 1393
    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSetting;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 1394
    .local v0, "bar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 1395
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto/16 :goto_0

    .line 1375
    .end local v0    # "bar":Landroid/app/ActionBar;
    :cond_5
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/settings/VoicemailSetting;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1376
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .param p1, "id"    # I

    .prologue
    const/16 v9, 0x643

    const/16 v8, 0x641

    const/4 v7, 0x0

    const v6, 0x7f0b01c2

    .line 1189
    const/16 v5, 0x5dc

    if-eq p1, v5, :cond_0

    const/16 v5, 0x578

    if-eq p1, v5, :cond_0

    const/16 v5, 0x5dd

    if-eq p1, v5, :cond_0

    const/16 v5, 0x5de

    if-eq p1, v5, :cond_0

    const/16 v5, 0x640

    if-ne p1, v5, :cond_1

    .line 1193
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1196
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0b01ba

    .line 1197
    .local v4, "titleId":I
    sparse-switch p1, :sswitch_data_0

    .line 1228
    const v3, 0x7f0b01bf

    .line 1231
    .local v3, "msgId":I
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mDismissAndFinish:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1235
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/phone/settings/VoicemailSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1236
    invoke-virtual {p0, v3}, Lcom/android/phone/settings/VoicemailSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1237
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1238
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1239
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1242
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 1258
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "msgId":I
    .end local v4    # "titleId":I
    :goto_1
    return-object v1

    .line 1199
    .restart local v0    # "b":Landroid/app/AlertDialog$Builder;
    .restart local v4    # "titleId":I
    :sswitch_0
    const v3, 0x7f0b01c6

    .line 1200
    .restart local v3    # "msgId":I
    const v4, 0x7f0b01a8

    .line 1202
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1207
    .end local v3    # "msgId":I
    :sswitch_1
    const v3, 0x7f0b01ca

    .line 1208
    .restart local v3    # "msgId":I
    const v4, 0x7f0b01a8

    .line 1210
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1213
    .end local v3    # "msgId":I
    :sswitch_2
    const v3, 0x7f0b01c7

    .line 1215
    .restart local v3    # "msgId":I
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1218
    .end local v3    # "msgId":I
    :sswitch_3
    const v3, 0x7f0b01c8

    .line 1220
    .restart local v3    # "msgId":I
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1223
    .end local v3    # "msgId":I
    :sswitch_4
    const v3, 0x7f0b01c9

    .line 1224
    .restart local v3    # "msgId":I
    const v5, 0x7f0b0320

    iget-object v6, p0, Lcom/android/phone/settings/VoicemailSetting;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1225
    const v5, 0x7f0b0321

    iget-object v6, p0, Lcom/android/phone/settings/VoicemailSetting;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1245
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v3    # "msgId":I
    .end local v4    # "titleId":I
    :cond_1
    if-eq p1, v8, :cond_2

    const/16 v5, 0x642

    if-eq p1, v5, :cond_2

    if-ne p1, v9, :cond_5

    .line 1247
    :cond_2
    new-instance v1, Lmiui/app/ProgressDialog;

    invoke-direct {v1, p0}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1248
    .local v1, "dialog":Lmiui/app/ProgressDialog;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1249
    invoke-virtual {v1, v7}, Lmiui/app/ProgressDialog;->setCancelable(Z)V

    .line 1250
    if-ne p1, v8, :cond_3

    const v5, 0x7f0b01bc

    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/phone/settings/VoicemailSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    if-ne p1, v9, :cond_4

    const v5, 0x7f0b01bd

    goto :goto_2

    :cond_4
    const v5, 0x7f0b01bb

    goto :goto_2

    .line 1258
    .end local v1    # "dialog":Lmiui/app/ProgressDialog;
    :cond_5
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_1

    .line 1197
    nop

    :sswitch_data_0
    .sparse-switch
        0x578 -> :sswitch_1
        0x5dc -> :sswitch_2
        0x5dd -> :sswitch_3
        0x5de -> :sswitch_4
        0x640 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDialogClosed(Lcom/android/phone/settings/EditPhoneNumberPreference;I)V
    .locals 2
    .param p1, "preference"    # Lcom/android/phone/settings/EditPhoneNumberPreference;
    .param p2, "buttonClicked"    # I

    .prologue
    .line 457
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    instance-of v1, p1, Lcom/android/phone/settings/EditPhoneNumberPreference;

    if-eqz v1, :cond_0

    .line 461
    move-object v0, p1

    .line 463
    .local v0, "epn":Lcom/android/phone/settings/EditPhoneNumberPreference;
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    if-ne v0, v1, :cond_0

    .line 464
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->handleVMBtnClickRequest()V

    goto :goto_0
.end method

.method public onGetDefaultNumber(Lcom/android/phone/settings/EditPhoneNumberPreference;)Ljava/lang/String;
    .locals 3
    .param p1, "preference"    # Lcom/android/phone/settings/EditPhoneNumberPreference;

    .prologue
    const/4 v1, 0x0

    .line 475
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    if-ne p1, v2, :cond_1

    .line 479
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->updateVoiceNumberField()V

    .line 492
    :cond_0
    :goto_0
    return-object v1

    .line 483
    :cond_1
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "vmDisplay":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b01a9

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/VoicemailSetting;->getString(I)Ljava/lang/String;

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

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1697
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1698
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 1699
    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSetting;->finish()V

    .line 1700
    const/4 v1, 0x1

    .line 1702
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 371
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPause()V

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mForeground:Z

    .line 373
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    .line 407
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_3

    .line 408
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    .local v0, "currentProviderKey":Ljava/lang/String;
    move-object v2, p2

    .line 409
    check-cast v2, Ljava/lang/String;

    .line 412
    .local v2, "newProviderKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 450
    .end local v0    # "currentProviderKey":Ljava/lang/String;
    .end local v2    # "newProviderKey":Ljava/lang/String;
    .end local p2    # "objValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v7

    .line 416
    .restart local v0    # "currentProviderKey":Ljava/lang/String;
    .restart local v2    # "newProviderKey":Ljava/lang/String;
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/phone/settings/VoicemailSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 418
    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 420
    invoke-direct {p0, v2}, Lcom/android/phone/settings/VoicemailSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;

    move-result-object v3

    .line 429
    .local v3, "newProviderSettings":Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;
    if-nez v3, :cond_2

    .line 432
    iput-boolean v7, p0, Lcom/android/phone/settings/VoicemailSetting;->mVMProviderSettingsForced:Z

    .line 433
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    invoke-direct {p0, v5}, Lcom/android/phone/settings/VoicemailSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    goto :goto_0

    .line 437
    :cond_2
    iput-boolean v7, p0, Lcom/android/phone/settings/VoicemailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 438
    invoke-direct {p0, v2, v3}, Lcom/android/phone/settings/VoicemailSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;)V

    goto :goto_0

    .line 440
    .end local v0    # "currentProviderKey":Ljava/lang/String;
    .end local v2    # "newProviderKey":Ljava/lang/String;
    .end local v3    # "newProviderSettings":Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;
    :cond_3
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_0

    .line 441
    const-string v5, "button_voicemail_notification_vibrate_key"

    iget-object v6, p0, Lcom/android/phone/settings/VoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->getPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 443
    .local v4, "vmVibrateKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 445
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 446
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    if-ne p2, v0, :cond_0

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/settings/VoicemailSetting;->startActivityForResult(Landroid/content/Intent;I)V

    .line 393
    const/4 v0, 0x1

    .line 395
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1182
    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 1183
    iput p1, p0, Lcom/android/phone/settings/VoicemailSetting;->mCurrentDialogId:I

    .line 1184
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 1401
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 1402
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mForeground:Z

    .line 1404
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1406
    .local v0, "prefs":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/phone/settings/VoicemailSetting;->migrateVoicemailVibrationSettingsIfNeeded(Landroid/content/SharedPreferences;I)Z

    .line 1407
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    const-string v2, "button_voicemail_notification_vibrate_key"

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->getPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1410
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->lookupRingtoneName()V

    .line 1411
    return-void
.end method

.method onRevertDone()V
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/settings/VoicemailSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 565
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->updateVoiceNumberField()V

    .line 566
    iget v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mVMOrFwdSetError:I

    if-eqz v0, :cond_0

    .line 567
    iget v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mVMOrFwdSetError:I

    invoke-direct {p0, v0}, Lcom/android/phone/settings/VoicemailSetting;->showVMDialog(I)V

    .line 568
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mVMOrFwdSetError:I

    .line 570
    :cond_0
    return-void
.end method

.method setVMNumberWithCarrier()V
    .locals 5

    .prologue
    .line 943
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 947
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 499
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 501
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 507
    :goto_0
    return-void

    .line 506
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
