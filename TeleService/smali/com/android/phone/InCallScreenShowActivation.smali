.class public Lcom/android/phone/InCallScreenShowActivation;
.super Landroid/app/Activity;
.source "InCallScreenShowActivation.java"


# static fields
.field private static final DBG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "InCallScreenShowActivation"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/InCallScreenShowActivation;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private isWizardRunning(Landroid/content/Context;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 169
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.DEVICE_INITIALIZATION_WIZARD"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/high16 v8, 0x10000

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 172
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "device_provisioned"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2

    move v2, v5

    .line 174
    .local v2, "provisioned":Z
    :goto_0
    const-string v7, "ro.setupwizard.mode"

    const-string v8, "REQUIRED"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "mode":Ljava/lang/String;
    const-string v7, "REQUIRED"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "OPTIONAL"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    move v4, v5

    .line 176
    .local v4, "runningSetupWizard":Z
    :goto_1
    sget-boolean v7, Lcom/android/phone/InCallScreenShowActivation;->DBG:Z

    if-eqz v7, :cond_1

    .line 177
    const-string v7, "InCallScreenShowActivation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resolvInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", provisioned = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", runningSetupWizard = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_1
    if-eqz v3, :cond_4

    if-nez v2, :cond_4

    if-eqz v4, :cond_4

    :goto_2
    return v5

    .end local v1    # "mode":Ljava/lang/String;
    .end local v2    # "provisioned":Z
    .end local v4    # "runningSetupWizard":Z
    :cond_2
    move v2, v6

    .line 172
    goto :goto_0

    .restart local v1    # "mode":Ljava/lang/String;
    .restart local v2    # "provisioned":Z
    :cond_3
    move v4, v6

    .line 175
    goto :goto_1

    .restart local v4    # "runningSetupWizard":Z
    :cond_4
    move v5, v6

    .line 180
    goto :goto_2
.end method

.method private startHfa()V
    .locals 5

    .prologue
    .line 187
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 189
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/phone/InCallScreenShowActivation;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "otasp_result_code_pending_intent"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 192
    .local v1, "otaResponseIntent":Landroid/app/PendingIntent;
    invoke-direct {p0, p0}, Lcom/android/phone/InCallScreenShowActivation;->isWizardRunning(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    .line 194
    .local v2, "showUi":Z
    :goto_0
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 196
    if-eqz v1, :cond_0

    .line 197
    const-string v3, "otasp_result_code_pending_intent"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 200
    :cond_0
    const-string v3, "InCallScreenShowActivation"

    const-string v4, "Starting hfa activation activity"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    if-eqz v2, :cond_2

    .line 202
    const-class v3, Lcom/android/phone/HfaActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreenShowActivation;->startActivity(Landroid/content/Intent;)V

    .line 209
    :goto_1
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreenShowActivation;->setResult(I)V

    .line 210
    return-void

    .line 192
    .end local v2    # "showUi":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 205
    .restart local v2    # "showUi":Z
    :cond_2
    const-class v3, Lcom/android/phone/HfaService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreenShowActivation;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/phone/InCallScreenShowActivation;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 56
    .local v3, "intent":Landroid/content/Intent;
    sget-boolean v7, Lcom/android/phone/InCallScreenShowActivation;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "InCallScreenShowActivation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreate: intent = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 58
    .local v2, "extras":Landroid/os/Bundle;
    sget-boolean v7, Lcom/android/phone/InCallScreenShowActivation;->DBG:Z

    if-eqz v7, :cond_1

    if-eqz v2, :cond_1

    .line 59
    const-string v7, "InCallScreenShowActivation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "      - has extras: size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v7, "InCallScreenShowActivation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "      - extras = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 64
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 65
    .local v5, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 66
    const-string v7, "InCallScreenShowActivation"

    const-string v8, "CDMA Provisioning not supported on this device"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p0, v10}, Lcom/android/phone/InCallScreenShowActivation;->setResult(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/phone/InCallScreenShowActivation;->finish()V

    .line 155
    :goto_0
    return-void

    .line 72
    :cond_2
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.android.phone.PERFORM_CDMA_PROVISIONING"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 74
    invoke-virtual {p0}, Lcom/android/phone/InCallScreenShowActivation;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090015

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 75
    .local v6, "usesHfa":Z
    if-eqz v6, :cond_3

    .line 76
    const-string v7, "InCallScreenShowActivation"

    const-string v8, "Starting Hfa from ACTION_PERFORM_CDMA_PROVISIONING"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-direct {p0}, Lcom/android/phone/InCallScreenShowActivation;->startHfa()V

    .line 78
    invoke-virtual {p0}, Lcom/android/phone/InCallScreenShowActivation;->finish()V

    goto :goto_0

    .line 90
    :cond_3
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    .line 91
    .local v4, "interactiveMode":Z
    const-string v7, "InCallScreenShowActivation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_PERFORM_CDMA_PROVISIONING (interactiveMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v7, "ota_override_interactive_mode"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "ro.debuggable"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v11, :cond_4

    .line 100
    const-string v7, "ota_override_interactive_mode"

    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 102
    const-string v7, "InCallScreenShowActivation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "===> MANUALLY OVERRIDING interactiveMode to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_4
    iget-object v8, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    const-string v7, "otasp_result_code_pending_intent"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    iput-object v7, v8, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaspResultCodePendingIntent:Landroid/app/PendingIntent;

    .line 116
    if-eqz v4, :cond_6

    .line 122
    sget-boolean v7, Lcom/android/phone/InCallScreenShowActivation;->DBG:Z

    if-eqz v7, :cond_5

    const-string v7, "InCallScreenShowActivation"

    const-string v8, "==> Starting interactive CDMA provisioning..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_5
    invoke-static {p0}, Lcom/android/phone/OtaUtils;->startInteractiveOtasp(Landroid/content/Context;)V

    .line 130
    invoke-virtual {p0, v11}, Lcom/android/phone/InCallScreenShowActivation;->setResult(I)V

    .line 154
    .end local v4    # "interactiveMode":Z
    .end local v6    # "usesHfa":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreenShowActivation;->finish()V

    goto/16 :goto_0

    .line 137
    .restart local v4    # "interactiveMode":Z
    .restart local v6    # "usesHfa":Z
    :cond_6
    sget-boolean v7, Lcom/android/phone/InCallScreenShowActivation;->DBG:Z

    if-eqz v7, :cond_7

    const-string v7, "InCallScreenShowActivation"

    const-string v8, "==> Starting non-interactive CDMA provisioning..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_7
    invoke-static {p0}, Lcom/android/phone/OtaUtils;->startNonInteractiveOtasp(Landroid/content/Context;)I

    move-result v1

    .line 140
    .local v1, "callStatus":I
    if-nez v1, :cond_9

    .line 141
    sget-boolean v7, Lcom/android/phone/InCallScreenShowActivation;->DBG:Z

    if-eqz v7, :cond_8

    const-string v7, "InCallScreenShowActivation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  ==> successful result from startNonInteractiveOtasp(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_8
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreenShowActivation;->setResult(I)V

    goto :goto_1

    .line 145
    :cond_9
    const-string v7, "InCallScreenShowActivation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failure code from startNonInteractiveOtasp(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreenShowActivation;->setResult(I)V

    goto :goto_1

    .line 150
    .end local v1    # "callStatus":I
    .end local v4    # "interactiveMode":Z
    .end local v6    # "usesHfa":Z
    :cond_a
    const-string v7, "InCallScreenShowActivation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected intent action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0, v10}, Lcom/android/phone/InCallScreenShowActivation;->setResult(I)V

    goto :goto_1
.end method
