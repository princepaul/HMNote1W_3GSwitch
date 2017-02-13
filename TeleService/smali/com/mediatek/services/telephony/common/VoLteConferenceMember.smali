.class public Lcom/mediatek/services/telephony/common/VoLteConferenceMember;
.super Ljava/lang/Object;
.source "VoLteConferenceMember.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/services/telephony/common/VoLteConferenceMember$IMSConferenceStatus;,
        Lcom/mediatek/services/telephony/common/VoLteConferenceMember$IMSConferenceRole;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/services/telephony/common/VoLteConferenceMember;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAssociactedCall:Lcom/android/services/telephony/common/Call;

.field private mCallId:I

.field private mRole:I

.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember$1;

    invoke-direct {v0}, Lcom/mediatek/services/telephony/common/VoLteConferenceMember$1;-><init>()V

    sput-object v0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, -0x1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput v0, p0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->mCallId:I

    .line 83
    iput v0, p0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->mRole:I

    .line 85
    iput v0, p0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->mStatus:I

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->mAssociactedCall:Lcom/android/services/telephony/common/Call;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->mCallId:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->mRole:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->mStatus:I

    .line 43
    const-class v0, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    iput-object v0, p0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->mAssociactedCall:Lcom/android/services/telephony/common/Call;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mediatek/services/telephony/common/VoLteConferenceMember$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/mediatek/services/telephony/common/VoLteConferenceMember$1;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/services/telephony/common/Call;III)V
    .locals 1
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;
    .param p2, "ConferenceId"    # I
    .param p3, "role"    # I
    .param p4, "status"    # I

    .prologue
    const/4 v0, -0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput v0, p0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->mCallId:I

    .line 83
    iput v0, p0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->mRole:I

    .line 85
    iput v0, p0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->mStatus:I

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->mAssociactedCall:Lcom/android/services/telephony/common/Call;

    .line 30
    iput p2, p0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->mCallId:I

    .line 31
    iput p3, p0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->mRole:I

    .line 32
    iput p4, p0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->mStatus:I

    .line 33
    iput-object p1, p0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->mAssociactedCall:Lcom/android/services/telephony/common/Call;

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public getAssociactedCall()Lcom/android/services/telephony/common/Call;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->mAssociactedCall:Lcom/android/services/telephony/common/Call;

    return-object v0
.end method

.method public getConferenceCallRole()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->mRole:I

    return v0
.end method

.method public getConfernceId()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->mCallId:I

    return v0
.end method

.method public getEntity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->mAssociactedCall:Lcom/android/services/telephony/common/Call;

    if-nez v0, :cond_0

    .line 159
    const/4 v0, 0x0

    .line 161
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->mAssociactedCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->mStatus:I

    return v0
.end method

.method public setAssociactedCall(Lcom/android/services/telephony/common/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->mAssociactedCall:Lcom/android/services/telephony/common/Call;

    .line 95
    return-void
.end method

.method public setConferenceCallRole(I)V
    .locals 0
    .param p1, "role"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->mRole:I

    .line 128
    return-void
.end method

.method public setConfernceId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->mCallId:I

    .line 111
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->mStatus:I

    .line 146
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 166
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCallId"

    iget v2, p0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->mCallId:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mRole"

    iget v2, p0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->mRole:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mStatus"

    iget v2, p0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->mStatus:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mAssociactedCall"

    iget-object v2, p0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->mAssociactedCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 19
    iget v0, p0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->mCallId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    iget v0, p0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->mRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    iget v0, p0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    iget-object v0, p0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->mAssociactedCall:Lcom/android/services/telephony/common/Call;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 24
    return-void
.end method
