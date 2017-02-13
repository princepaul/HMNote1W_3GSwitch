.class public Lcom/mediatek/settings/CallBarring;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "CallBarring.java"

# interfaces
.implements Lcom/mediatek/settings/CallBarringInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/CallBarring$CallBarringFragment;
    }
.end annotation


# static fields
.field private static final BUTTON_ALL_INCOMING_EXCEPT:Ljava/lang/String; = "all_incoming_except_key"

.field private static final BUTTON_ALL_INCOMING_KEY:Ljava/lang/String; = "all_incoming_key"

.field private static final BUTTON_ALL_OUTING_KEY:Ljava/lang/String; = "all_outing_international_key"

.field private static final BUTTON_CALL_BARRING_KEY:Ljava/lang/String; = "all_outing_key"

.field private static final BUTTON_CHANGE_PASSWORD_KEY:Ljava/lang/String; = "change_password_key"

.field private static final BUTTON_DEACTIVATE_KEY:Ljava/lang/String; = "deactivate_all_key"

.field private static final BUTTON_OUT_INTERNATIONAL_EXCEPT:Ljava/lang/String; = "all_outing_except_key"

.field public static final CALL_BARRING:Ljava/lang/String; = "call_barring"

.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/CallBarring"


# instance fields
.field private mCallAllOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

.field private mCallCancel:Lcom/mediatek/settings/CallBarringResetPreference;

.field private mCallChangePassword:Lcom/mediatek/settings/CallBarringChangePassword;

.field private mCallInButton:Lcom/mediatek/settings/CallBarringBasePreference;

.field private mCallInButton2:Lcom/mediatek/settings/CallBarringBasePreference;

.field private mCallInternationalOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

.field private mCallInternationalOutButton2:Lcom/mediatek/settings/CallBarringBasePreference;

.field private mCheckedPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorState:I

.field private mFirstResume:Z

.field private mInitIndex:I

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsVtSetting:Z

.field private mPassword:Ljava/lang/String;

.field private mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetIndex:I

.field private mSlotId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCheckedPreferences:Ljava/util/ArrayList;

    .line 92
    iput v1, p0, Lcom/mediatek/settings/CallBarring;->mInitIndex:I

    .line 93
    iput v1, p0, Lcom/mediatek/settings/CallBarring;->mResetIndex:I

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/CallBarring;->mPassword:Ljava/lang/String;

    .line 95
    iput v1, p0, Lcom/mediatek/settings/CallBarring;->mErrorState:I

    .line 96
    iput-boolean v1, p0, Lcom/mediatek/settings/CallBarring;->mFirstResume:Z

    .line 100
    iput-boolean v1, p0, Lcom/mediatek/settings/CallBarring;->mIsVtSetting:Z

    .line 103
    new-instance v0, Lcom/mediatek/settings/CallBarring$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/CallBarring$1;-><init>(Lcom/mediatek/settings/CallBarring;)V

    iput-object v0, p0, Lcom/mediatek/settings/CallBarring;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/CallBarring;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CallBarring;

    .prologue
    .line 69
    iget v0, p0, Lcom/mediatek/settings/CallBarring;->mSlotId:I

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/settings/CallBarring;)Lcom/mediatek/settings/CallBarringBasePreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CallBarring;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallAllOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/settings/CallBarring;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CallBarring;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/settings/CallBarring;Lcom/mediatek/settings/CallBarringBasePreference;)Lcom/mediatek/settings/CallBarringBasePreference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CallBarring;
    .param p1, "x1"    # Lcom/mediatek/settings/CallBarringBasePreference;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/mediatek/settings/CallBarring;->mCallAllOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/mediatek/settings/CallBarring;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CallBarring;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/mediatek/settings/CallBarring;->mFirstResume:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/mediatek/settings/CallBarring;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CallBarring;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/mediatek/settings/CallBarring;->initVTSetting()V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/settings/CallBarring;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CallBarring;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/mediatek/settings/CallBarring;->registerCallBacks()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/settings/CallBarring;)Lcom/mediatek/settings/CallBarringBasePreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CallBarring;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/settings/CallBarring;Lcom/mediatek/settings/CallBarringBasePreference;)Lcom/mediatek/settings/CallBarringBasePreference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CallBarring;
    .param p1, "x1"    # Lcom/mediatek/settings/CallBarringBasePreference;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mediatek/settings/CallBarring;)Lcom/mediatek/settings/CallBarringBasePreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CallBarring;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/settings/CallBarring;Lcom/mediatek/settings/CallBarringBasePreference;)Lcom/mediatek/settings/CallBarringBasePreference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CallBarring;
    .param p1, "x1"    # Lcom/mediatek/settings/CallBarringBasePreference;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/settings/CallBarring;)Lcom/mediatek/settings/CallBarringBasePreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CallBarring;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton:Lcom/mediatek/settings/CallBarringBasePreference;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/settings/CallBarring;Lcom/mediatek/settings/CallBarringBasePreference;)Lcom/mediatek/settings/CallBarringBasePreference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CallBarring;
    .param p1, "x1"    # Lcom/mediatek/settings/CallBarringBasePreference;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton:Lcom/mediatek/settings/CallBarringBasePreference;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/settings/CallBarring;)Lcom/mediatek/settings/CallBarringBasePreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CallBarring;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/settings/CallBarring;Lcom/mediatek/settings/CallBarringBasePreference;)Lcom/mediatek/settings/CallBarringBasePreference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CallBarring;
    .param p1, "x1"    # Lcom/mediatek/settings/CallBarringBasePreference;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/settings/CallBarring;)Lcom/mediatek/settings/CallBarringResetPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CallBarring;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallCancel:Lcom/mediatek/settings/CallBarringResetPreference;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mediatek/settings/CallBarring;Lcom/mediatek/settings/CallBarringResetPreference;)Lcom/mediatek/settings/CallBarringResetPreference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CallBarring;
    .param p1, "x1"    # Lcom/mediatek/settings/CallBarringResetPreference;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/mediatek/settings/CallBarring;->mCallCancel:Lcom/mediatek/settings/CallBarringResetPreference;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mediatek/settings/CallBarring;)Lcom/mediatek/settings/CallBarringChangePassword;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CallBarring;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallChangePassword:Lcom/mediatek/settings/CallBarringChangePassword;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mediatek/settings/CallBarring;Lcom/mediatek/settings/CallBarringChangePassword;)Lcom/mediatek/settings/CallBarringChangePassword;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CallBarring;
    .param p1, "x1"    # Lcom/mediatek/settings/CallBarringChangePassword;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/mediatek/settings/CallBarring;->mCallChangePassword:Lcom/mediatek/settings/CallBarringChangePassword;

    return-object p1
.end method

.method static synthetic access$800(Lcom/mediatek/settings/CallBarring;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CallBarring;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/mediatek/settings/CallBarring;->initial()V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/settings/CallBarring;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CallBarring;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/mediatek/settings/CallBarring;->initSlotId()V

    return-void
.end method

.method private doGetCallState(Landroid/preference/Preference;)V
    .locals 2
    .param p1, "p"    # Landroid/preference/Preference;

    .prologue
    .line 239
    instance-of v0, p1, Lcom/mediatek/settings/CallBarringBasePreference;

    if-eqz v0, :cond_0

    .line 240
    check-cast p1, Lcom/mediatek/settings/CallBarringBasePreference;

    .end local p1    # "p":Landroid/preference/Preference;
    const/4 v0, 0x0

    iget v1, p0, Lcom/mediatek/settings/CallBarring;->mSlotId:I

    invoke-virtual {p1, p0, v0, v1}, Lcom/mediatek/settings/CallBarringBasePreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    .line 242
    :cond_0
    return-void
.end method

.method private initSlotId()V
    .locals 4

    .prologue
    .line 355
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/mediatek/settings/CallBarring;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "simId"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/CallBarring;->mSlotId:I

    .line 357
    const-string v1, "Settings/CallBarring"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[initSlotId][mSlotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/CallBarring;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget v1, p0, Lcom/mediatek/settings/CallBarring;->mSlotId:I

    invoke-static {p0, v1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 359
    .local v0, "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_0

    .line 360
    iget-object v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/CallBarring;->setTitle(Ljava/lang/CharSequence;)V

    .line 363
    .end local v0    # "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_0
    return-void
.end method

.method private initVTSetting()V
    .locals 4

    .prologue
    const/16 v3, 0x200

    .line 342
    invoke-virtual {p0}, Lcom/mediatek/settings/CallBarring;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ISVT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/settings/CallBarring;->mIsVtSetting:Z

    .line 343
    const-string v0, "Settings/CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initVTSetting]ISVT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/settings/CallBarring;->mIsVtSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-boolean v0, p0, Lcom/mediatek/settings/CallBarring;->mIsVtSetting:Z

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallAllOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v0, v3}, Lcom/mediatek/settings/CallBarringBasePreference;->setServiceClass(I)V

    .line 346
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v0, v3}, Lcom/mediatek/settings/CallBarringBasePreference;->setServiceClass(I)V

    .line 347
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v0, v3}, Lcom/mediatek/settings/CallBarringBasePreference;->setServiceClass(I)V

    .line 348
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v0, v3}, Lcom/mediatek/settings/CallBarringBasePreference;->setServiceClass(I)V

    .line 349
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v0, v3}, Lcom/mediatek/settings/CallBarringBasePreference;->setServiceClass(I)V

    .line 350
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallCancel:Lcom/mediatek/settings/CallBarringResetPreference;

    invoke-virtual {v0, v3}, Lcom/mediatek/settings/CallBarringResetPreference;->setServiceClass(I)V

    .line 352
    :cond_0
    return-void
.end method

.method private initial()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallAllOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    const-string v1, "AO"

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/CallBarringBasePreference;->setmFacility(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallAllOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    const v1, 0x7f0b047e

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/CallBarringBasePreference;->setmTitle(I)V

    .line 221
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    const-string v1, "OI"

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/CallBarringBasePreference;->setmFacility(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    const v1, 0x7f0b047f

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/CallBarringBasePreference;->setmTitle(I)V

    .line 225
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    const-string v1, "OX"

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/CallBarringBasePreference;->setmFacility(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    const v1, 0x7f0b0480

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/CallBarringBasePreference;->setmTitle(I)V

    .line 230
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton:Lcom/mediatek/settings/CallBarringBasePreference;

    const-string v1, "AI"

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/CallBarringBasePreference;->setmFacility(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton:Lcom/mediatek/settings/CallBarringBasePreference;

    const v1, 0x7f0b0481

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/CallBarringBasePreference;->setmTitle(I)V

    .line 233
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    const-string v1, "IR"

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/CallBarringBasePreference;->setmFacility(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    const v1, 0x7f0b0482

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/CallBarringBasePreference;->setmTitle(I)V

    .line 235
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallCancel:Lcom/mediatek/settings/CallBarringResetPreference;

    invoke-virtual {v0, p0}, Lcom/mediatek/settings/CallBarringResetPreference;->setListener(Lcom/android/phone/TimeConsumingPreferenceListener;)V

    .line 236
    return-void
.end method

.method private registerCallBacks()V
    .locals 2

    .prologue
    .line 335
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/settings/CallBarring;->mIntentFilter:Landroid/content/IntentFilter;

    .line 336
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/settings/CallBarring;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 337
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/settings/CallBarring;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 339
    return-void
.end method

.method private startUpdate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 202
    iput v3, p0, Lcom/mediatek/settings/CallBarring;->mInitIndex:I

    .line 203
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    iget v2, p0, Lcom/mediatek/settings/CallBarring;->mInitIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 204
    .local v0, "p":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 205
    invoke-direct {p0, v0}, Lcom/mediatek/settings/CallBarring;->doGetCallState(Landroid/preference/Preference;)V

    .line 206
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->setMmiFinished(Z)V

    .line 208
    :cond_0
    return-void
.end method


# virtual methods
.method public doCallBarringRefresh(Ljava/lang/String;)V
    .locals 4
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 281
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallAllOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1}, Lcom/mediatek/settings/CallBarringBasePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0486

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "summary":Ljava/lang/String;
    const-string v1, "AO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/mediatek/settings/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/mediatek/settings/CallBarringBasePreference;->setChecked(Z)V

    .line 285
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/mediatek/settings/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/mediatek/settings/CallBarringBasePreference;->setChecked(Z)V

    .line 289
    :cond_0
    const-string v1, "OI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallAllOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/mediatek/settings/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallAllOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/mediatek/settings/CallBarringBasePreference;->setChecked(Z)V

    .line 292
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/mediatek/settings/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/mediatek/settings/CallBarringBasePreference;->setChecked(Z)V

    .line 296
    :cond_1
    const-string v1, "OX"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 297
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallAllOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/mediatek/settings/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallAllOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/mediatek/settings/CallBarringBasePreference;->setChecked(Z)V

    .line 299
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/mediatek/settings/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/mediatek/settings/CallBarringBasePreference;->setChecked(Z)V

    .line 303
    :cond_2
    const-string v1, "AI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 304
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/mediatek/settings/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/mediatek/settings/CallBarringBasePreference;->setChecked(Z)V

    .line 308
    :cond_3
    const-string v1, "IR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 309
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/mediatek/settings/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/mediatek/settings/CallBarringBasePreference;->setChecked(Z)V

    .line 312
    :cond_4
    return-void
.end method

.method public doCancelAllState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 266
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallAllOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1}, Lcom/mediatek/settings/CallBarringBasePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0486

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "summary":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallAllOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/mediatek/settings/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallAllOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/mediatek/settings/CallBarringBasePreference;->setChecked(Z)V

    .line 269
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/mediatek/settings/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/mediatek/settings/CallBarringBasePreference;->setChecked(Z)V

    .line 271
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/mediatek/settings/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/mediatek/settings/CallBarringBasePreference;->setChecked(Z)V

    .line 273
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/mediatek/settings/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/mediatek/settings/CallBarringBasePreference;->setChecked(Z)V

    .line 275
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/mediatek/settings/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/mediatek/settings/CallBarringBasePreference;->setChecked(Z)V

    .line 277
    return-void
.end method

.method public getErrorState()I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/mediatek/settings/CallBarring;->mErrorState:I

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 211
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 212
    const/16 v0, 0x12c

    invoke-virtual {p0}, Lcom/mediatek/settings/CallBarring;->getErrorState()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/mediatek/settings/CallBarring;->finish()V

    .line 215
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    if-nez p1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/mediatek/settings/CallBarring;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    new-instance v2, Lcom/mediatek/settings/CallBarring$CallBarringFragment;

    invoke-direct {v2}, Lcom/mediatek/settings/CallBarring$CallBarringFragment;-><init>()V

    const-string v3, "call_barring"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 125
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 327
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onDestroy()V

    .line 329
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/CallBarring;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 331
    return-void
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "reading"    # Z

    .prologue
    .line 246
    iget v3, p0, Lcom/mediatek/settings/CallBarring;->mInitIndex:I

    iget-object v4, p0, Lcom/mediatek/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/settings/CallBarring;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 247
    iget-object v3, p0, Lcom/mediatek/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    iget v4, p0, Lcom/mediatek/settings/CallBarring;->mInitIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/CallBarringBasePreference;

    .line 248
    .local v0, "cb":Lcom/mediatek/settings/CallBarringBasePreference;
    invoke-virtual {v0}, Lcom/mediatek/settings/CallBarringBasePreference;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 249
    iget v3, p0, Lcom/mediatek/settings/CallBarring;->mInitIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mediatek/settings/CallBarring;->mInitIndex:I

    .line 250
    const-string v3, "Settings/CallBarring"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFinished() is called (init part) mInitIndex is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/settings/CallBarring;->mInitIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "is reading?  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v3, p0, Lcom/mediatek/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    iget v4, p0, Lcom/mediatek/settings/CallBarring;->mInitIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 253
    .local v2, "p":Landroid/preference/Preference;
    invoke-direct {p0, v2}, Lcom/mediatek/settings/CallBarring;->doGetCallState(Landroid/preference/Preference;)V

    .line 261
    .end local v0    # "cb":Lcom/mediatek/settings/CallBarringBasePreference;
    .end local v2    # "p":Landroid/preference/Preference;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    .line 262
    return-void

    .line 255
    .restart local v0    # "cb":Lcom/mediatek/settings/CallBarringBasePreference;
    :cond_1
    iget v1, p0, Lcom/mediatek/settings/CallBarring;->mInitIndex:I

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/mediatek/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 256
    iget-object v3, p0, Lcom/mediatek/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 258
    :cond_2
    iget-object v3, p0, Lcom/mediatek/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/mediatek/settings/CallBarring;->mInitIndex:I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 190
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 191
    .local v0, "itemId":I
    packed-switch v0, :pswitch_data_0

    .line 198
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 193
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/settings/CallBarring;->finish()V

    .line 194
    const/4 v1, 0x1

    goto :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 180
    iget-boolean v0, p0, Lcom/mediatek/settings/CallBarring;->mFirstResume:Z

    if-eqz v0, :cond_1

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/CallBarring;->mFirstResume:Z

    .line 182
    invoke-direct {p0}, Lcom/mediatek/settings/CallBarring;->startUpdate()V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMmiFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/mediatek/settings/CallBarring;->startUpdate()V

    goto :goto_0
.end method

.method public resetIndex(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 323
    iput p1, p0, Lcom/mediatek/settings/CallBarring;->mInitIndex:I

    .line 324
    return-void
.end method

.method public setErrorState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 319
    iput p1, p0, Lcom/mediatek/settings/CallBarring;->mErrorState:I

    .line 320
    return-void
.end method
