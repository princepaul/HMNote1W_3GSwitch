.class public Lcom/mediatek/services/telephony/common/VoLteConferenceMember$IMSConferenceRole;
.super Ljava/lang/Object;
.source "VoLteConferenceMember.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/services/telephony/common/VoLteConferenceMember;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IMSConferenceRole"
.end annotation


# static fields
.field public static final IMS_CONFERENCE_HOST_CREATOR:I = 0x64

.field public static final IMS_CONFERENCE_HOST_USER:I = 0x65

.field public static final IMS_CONFERENCE_PARTICIPANT_USER:I = 0x66


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
