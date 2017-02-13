.class public Lcom/mediatek/services/telephony/common/VoLteConferenceMember$IMSConferenceStatus;
.super Ljava/lang/Object;
.source "VoLteConferenceMember.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/services/telephony/common/VoLteConferenceMember;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IMSConferenceStatus"
.end annotation


# static fields
.field public static final STATUS_CONNECTED:I = 0xc8

.field public static final STATUS_DISCONNECTED:I = 0xc9

.field public static final STATUS_ON_HOLD:I = 0xca


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
