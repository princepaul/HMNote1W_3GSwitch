.class public Lcom/android/internal/telephony/cdma/ViaDcTracker;
.super Lcom/android/internal/telephony/dataconnection/DcTracker;
.source "ViaDcTracker.java"


# static fields
.field private static final PDP_POOL_SIZE:I = 0x1


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .param p1, "p"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 11
    return-void
.end method


# virtual methods
.method protected getPdpConnectionPoolSize()I
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method protected onlySupportOnePdp()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    return v0
.end method
