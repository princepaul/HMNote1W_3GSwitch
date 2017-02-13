.class public Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static F:I = 0x0

.field private static G:Lcom/android/internal/telephony/CommandsInterface; = null

.field public static final MODEM_SWITCH_MODE_FDD:I = 0x3

.field public static final MODEM_SWITCH_MODE_TDD:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->F:I

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->G:Lcom/android/internal/telephony/CommandsInterface;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "Constructor invoked"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 61
    sput-object p1, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->G:Lcom/android/internal/telephony/CommandsInterface;

    .line 62
    return-void
.end method

.method public static getModem()I
    .locals 1

    .prologue
    .line 99
    sget v0, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->F:I

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 107
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ModemSwitchHandler]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method

.method public static setModem(I)V
    .locals 0

    .prologue
    .line 103
    sput p0, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->F:I

    .line 104
    return-void
.end method

.method public static switchModem(I)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 65
    sget-object v0, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->G:Lcom/android/internal/telephony/CommandsInterface;

    if-nez v0, :cond_1

    .line 66
    const-string v0, "sCi is null"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->G:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-nez v0, :cond_3

    .line 70
    if-ne p0, v4, :cond_2

    .line 71
    const-string v0, "[WPO] Radio off or unavailable, can not switch to FDD modem"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_2
    if-ne p0, v5, :cond_0

    .line 73
    const-string v0, "[WPO] Radio off or unavailable, can not switch to TDD modem"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WPO] Store Modem:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 78
    const-string v0, "ro.operator.optr"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_4

    const-string v1, "OP01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 84
    :goto_1
    invoke-static {p0}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->setModem(I)V

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Broadcast intent ACTION_MD_TYPE_CHANGE modemType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_MD_TYPE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    const-string v1, "mdType"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 89
    if-ne p0, v4, :cond_5

    .line 90
    const-string v0, "Reload and reset to FDD modem image"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 91
    sget-object v0, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->G:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xa

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setTRM(ILandroid/os/Message;)V

    goto :goto_0

    .line 82
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->G:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v3}, Lcom/android/internal/telephony/CommandsInterface;->storeModemType(ILandroid/os/Message;)V

    goto :goto_1

    .line 92
    :cond_5
    if-ne p0, v5, :cond_0

    .line 93
    const-string v0, "Reload and reset to TDD modem image"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 94
    sget-object v0, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->G:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x9

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setTRM(ILandroid/os/Message;)V

    goto/16 :goto_0
.end method
