.class public Lcom/mediatek/phone/ext/VTCallBannerControllerExtension;
.super Ljava/lang/Object;
.source "VTCallBannerControllerExtension.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vtCallBanner"    # Landroid/view/ViewGroup;

    .prologue
    .line 53
    return-void
.end method

.method public updateCallStateWidgets(Lcom/android/internal/telephony/Call;)Z
    .locals 1
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .param p1, "info"    # Lcom/android/internal/telephony/CallerInfo;
    .param p2, "presentation"    # I
    .param p3, "isTemporary"    # Z
    .param p4, "call"    # Lcom/android/internal/telephony/Call;
    .param p5, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 83
    return-void
.end method

.method public updateState(Lcom/android/internal/telephony/Call;)Z
    .locals 1
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method
