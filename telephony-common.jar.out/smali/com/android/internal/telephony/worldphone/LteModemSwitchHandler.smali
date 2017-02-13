.class public Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;
.super Ljava/lang/Object;
.source "LteModemSwitchHandler.java"


# static fields
.field public static final MD_TYPE_FDD:I = 0x64

.field public static final MD_TYPE_LTG:I = 0x6

.field public static final MD_TYPE_LTNG:I = 0x7

.field public static final MD_TYPE_LWG:I = 0x5

.field public static final MD_TYPE_TDD:I = 0x65

.field public static final MD_TYPE_TG:I = 0x4

.field public static final MD_TYPE_UNKNOWN:I = 0x0

.field public static final MD_TYPE_WG:I = 0x3


# direct methods
.method public constructor <init>([Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "var1"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static getActiveModemType()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public static isLteDcMode()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public static modemToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "var0"    # I

    .prologue
    .line 47
    const-string v0, ""

    return-object v0
.end method

.method public static reloadModem(I)V
    .locals 0
    .param p0, "var0"    # I

    .prologue
    .line 30
    return-void
.end method

.method public static reloadModem(Lcom/android/internal/telephony/CommandsInterface;I)V
    .locals 0
    .param p0, "var0"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p1, "var1"    # I

    .prologue
    .line 33
    return-void
.end method

.method public static setModemType(I)V
    .locals 0
    .param p0, "var0"    # I

    .prologue
    .line 40
    return-void
.end method

.method public static switchModem(I)V
    .locals 0
    .param p0, "var0"    # I

    .prologue
    .line 24
    return-void
.end method

.method public static switchModem(Lcom/android/internal/telephony/CommandsInterface;I)V
    .locals 0
    .param p0, "var0"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p1, "var1"    # I

    .prologue
    .line 27
    return-void
.end method
