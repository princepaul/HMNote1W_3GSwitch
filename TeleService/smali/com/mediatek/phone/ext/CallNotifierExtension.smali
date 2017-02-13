.class public Lcom/mediatek/phone/ext/CallNotifierExtension;
.super Ljava/lang/Object;
.source "CallNotifierExtension.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnect(Lcom/android/internal/telephony/Connection;)Z
    .locals 1
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public onPhoneStateChanged(Lcom/android/internal/telephony/CallManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "cm"    # Lcom/android/internal/telephony/CallManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    return-void
.end method
