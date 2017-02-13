.class public Lcom/android/services/telephony/common/Call$IMSCallMode;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/common/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IMSCallMode"
.end annotation


# static fields
.field public static final IMS_VIDEO_CALL:I = 0x15

.field public static final IMS_VOICE_CALL:I = 0x14

.field public static final IMS_VOICE_CONF_HOST:I = 0x16

.field public static final IMS_VOICE_CONF_PARTICIPANT:I = 0x17


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
