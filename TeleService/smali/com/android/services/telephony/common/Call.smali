.class public final Lcom/android/services/telephony/common/Call;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/common/Call$IMSCallMode;,
        Lcom/android/services/telephony/common/Call$DisconnectCause;,
        Lcom/android/services/telephony/common/Call$Capabilities;,
        Lcom/android/services/telephony/common/Call$State;
    }
.end annotation


# static fields
.field public static final CALL_TYPE_SIP:I = 0x2

.field public static final CALL_TYPE_VIDEO:I = 0x1

.field public static final CALL_TYPE_VOICE:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/services/telephony/common/Call;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVALID_CALL_ID:I = -0x1

.field public static final MAX_CONFERENCED_CALLS:I = 0x5

.field public static PRESENTATION_ALLOWED:I

.field public static PRESENTATION_PAYPHONE:I

.field public static PRESENTATION_RESTRICTED:I

.field public static PRESENTATION_UNKNOWN:I

.field private static final STATE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBlockType:I

.field private mCallId:I

.field private mCapabilities:I

.field private mChildCallIds:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectTime:J

.field private mConnectTimeReal:J

.field private mCreateTime:J

.field private mDisconnectCause:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field private mGatewayNumber:Ljava/lang/String;

.field private mGatewayPackage:Ljava/lang/String;

.field private mIdentification:Lcom/android/services/telephony/common/CallIdentification;

.field public mIsIncoming:I

.field private mLiveTalkId:J

.field private mLiveTalkProvider:Ljava/lang/String;

.field private mPhoneId:I

.field private mPhoneType:I

.field private mRejectMessage:Ljava/lang/String;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 177
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ACTIVE"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CALL_WAITING"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DIALING"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "REDIALING"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IDLE"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "INCOMING"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ONHOLD"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "INVALID"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DISCONNECTING"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DISCONNECTED"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CONFERENCED"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/Call;->STATE_MAP:Ljava/util/Map;

    .line 193
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    sput v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    .line 195
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    sput v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_RESTRICTED:I

    .line 197
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    sput v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_UNKNOWN:I

    .line 199
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_PAYPHONE:I

    sput v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_PAYPHONE:I

    .line 473
    new-instance v0, Lcom/android/services/telephony/common/Call$1;

    invoke-direct {v0}, Lcom/android/services/telephony/common/Call$1;-><init>()V

    sput-object v0, Lcom/android/services/telephony/common/Call;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .param p1, "callId"    # I

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput v1, p0, Lcom/android/services/telephony/common/Call;->mState:I

    .line 211
    sget-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->UNKNOWN:Lcom/android/services/telephony/common/Call$DisconnectCause;

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mDisconnectCause:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 217
    iput-wide v2, p0, Lcom/android/services/telephony/common/Call;->mCreateTime:J

    .line 220
    iput-wide v2, p0, Lcom/android/services/telephony/common/Call;->mConnectTime:J

    .line 223
    invoke-static {}, Lcom/google/android/collect/Sets;->newSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mChildCallIds:Ljava/util/SortedSet;

    .line 231
    iput v1, p0, Lcom/android/services/telephony/common/Call;->mBlockType:I

    .line 531
    iput-object v4, p0, Lcom/android/services/telephony/common/Call;->mRejectMessage:Ljava/lang/String;

    .line 534
    iput v1, p0, Lcom/android/services/telephony/common/Call;->mPhoneType:I

    .line 537
    iput v1, p0, Lcom/android/services/telephony/common/Call;->mPhoneId:I

    .line 542
    iput-wide v2, p0, Lcom/android/services/telephony/common/Call;->mConnectTimeReal:J

    .line 730
    iput-object v4, p0, Lcom/android/services/telephony/common/Call;->mLiveTalkProvider:Ljava/lang/String;

    .line 731
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/services/telephony/common/Call;->mLiveTalkId:J

    .line 234
    iput p1, p0, Lcom/android/services/telephony/common/Call;->mCallId:I

    .line 235
    new-instance v0, Lcom/android/services/telephony/common/CallIdentification;

    iget v1, p0, Lcom/android/services/telephony/common/Call;->mCallId:I

    invoke-direct {v0, v1}, Lcom/android/services/telephony/common/CallIdentification;-><init>(I)V

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    .line 236
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput v1, p0, Lcom/android/services/telephony/common/Call;->mState:I

    .line 211
    sget-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->UNKNOWN:Lcom/android/services/telephony/common/Call$DisconnectCause;

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mDisconnectCause:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 217
    iput-wide v2, p0, Lcom/android/services/telephony/common/Call;->mCreateTime:J

    .line 220
    iput-wide v2, p0, Lcom/android/services/telephony/common/Call;->mConnectTime:J

    .line 223
    invoke-static {}, Lcom/google/android/collect/Sets;->newSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mChildCallIds:Ljava/util/SortedSet;

    .line 231
    iput v1, p0, Lcom/android/services/telephony/common/Call;->mBlockType:I

    .line 531
    iput-object v4, p0, Lcom/android/services/telephony/common/Call;->mRejectMessage:Ljava/lang/String;

    .line 534
    iput v1, p0, Lcom/android/services/telephony/common/Call;->mPhoneType:I

    .line 537
    iput v1, p0, Lcom/android/services/telephony/common/Call;->mPhoneId:I

    .line 542
    iput-wide v2, p0, Lcom/android/services/telephony/common/Call;->mConnectTimeReal:J

    .line 730
    iput-object v4, p0, Lcom/android/services/telephony/common/Call;->mLiveTalkProvider:Ljava/lang/String;

    .line 731
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/services/telephony/common/Call;->mLiveTalkId:J

    .line 439
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mCallId:I

    .line 440
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mState:I

    .line 441
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/Call$DisconnectCause;->valueOf(Ljava/lang/String;)Lcom/android/services/telephony/common/Call$DisconnectCause;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mDisconnectCause:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 442
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mCapabilities:I

    .line 443
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/services/telephony/common/Call;->mCreateTime:J

    .line 444
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/services/telephony/common/Call;->mConnectTime:J

    .line 445
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mChildCallIds:Ljava/util/SortedSet;

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/primitives/Ints;->asList([I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 446
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mGatewayNumber:Ljava/lang/String;

    .line 447
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mGatewayPackage:Ljava/lang/String;

    .line 448
    const-class v0, Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/CallIdentification;

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    .line 451
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mRejectMessage:Ljava/lang/String;

    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mPhoneType:I

    .line 454
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mPhoneId:I

    .line 455
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mIsIncoming:I

    .line 456
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mBlockType:I

    .line 461
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/services/telephony/common/Call;->mConnectTimeReal:J

    .line 463
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/services/telephony/common/Call$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/services/telephony/common/Call$1;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/services/telephony/common/Call;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/services/telephony/common/Call;)V
    .locals 5
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput v1, p0, Lcom/android/services/telephony/common/Call;->mState:I

    .line 211
    sget-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->UNKNOWN:Lcom/android/services/telephony/common/Call$DisconnectCause;

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mDisconnectCause:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 217
    iput-wide v2, p0, Lcom/android/services/telephony/common/Call;->mCreateTime:J

    .line 220
    iput-wide v2, p0, Lcom/android/services/telephony/common/Call;->mConnectTime:J

    .line 223
    invoke-static {}, Lcom/google/android/collect/Sets;->newSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mChildCallIds:Ljava/util/SortedSet;

    .line 231
    iput v1, p0, Lcom/android/services/telephony/common/Call;->mBlockType:I

    .line 531
    iput-object v4, p0, Lcom/android/services/telephony/common/Call;->mRejectMessage:Ljava/lang/String;

    .line 534
    iput v1, p0, Lcom/android/services/telephony/common/Call;->mPhoneType:I

    .line 537
    iput v1, p0, Lcom/android/services/telephony/common/Call;->mPhoneId:I

    .line 542
    iput-wide v2, p0, Lcom/android/services/telephony/common/Call;->mConnectTimeReal:J

    .line 730
    iput-object v4, p0, Lcom/android/services/telephony/common/Call;->mLiveTalkProvider:Ljava/lang/String;

    .line 731
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/services/telephony/common/Call;->mLiveTalkId:J

    .line 239
    iget v0, p1, Lcom/android/services/telephony/common/Call;->mCallId:I

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mCallId:I

    .line 240
    new-instance v0, Lcom/android/services/telephony/common/CallIdentification;

    iget-object v1, p1, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-direct {v0, v1}, Lcom/android/services/telephony/common/CallIdentification;-><init>(Lcom/android/services/telephony/common/CallIdentification;)V

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    .line 241
    iget v0, p1, Lcom/android/services/telephony/common/Call;->mState:I

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mState:I

    .line 242
    iget-object v0, p1, Lcom/android/services/telephony/common/Call;->mDisconnectCause:Lcom/android/services/telephony/common/Call$DisconnectCause;

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mDisconnectCause:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 243
    iget v0, p1, Lcom/android/services/telephony/common/Call;->mCapabilities:I

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mCapabilities:I

    .line 244
    iget-wide v0, p1, Lcom/android/services/telephony/common/Call;->mCreateTime:J

    iput-wide v0, p0, Lcom/android/services/telephony/common/Call;->mCreateTime:J

    .line 245
    iget-wide v0, p1, Lcom/android/services/telephony/common/Call;->mConnectTime:J

    iput-wide v0, p0, Lcom/android/services/telephony/common/Call;->mConnectTime:J

    .line 246
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p1, Lcom/android/services/telephony/common/Call;->mChildCallIds:Ljava/util/SortedSet;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mChildCallIds:Ljava/util/SortedSet;

    .line 247
    iget-object v0, p1, Lcom/android/services/telephony/common/Call;->mGatewayNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mGatewayNumber:Ljava/lang/String;

    .line 248
    iget-object v0, p1, Lcom/android/services/telephony/common/Call;->mGatewayPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mGatewayPackage:Ljava/lang/String;

    .line 251
    iget-object v0, p1, Lcom/android/services/telephony/common/Call;->mRejectMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mRejectMessage:Ljava/lang/String;

    .line 253
    iget v0, p1, Lcom/android/services/telephony/common/Call;->mPhoneType:I

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mPhoneType:I

    .line 254
    iget v0, p1, Lcom/android/services/telephony/common/Call;->mPhoneId:I

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mPhoneId:I

    .line 255
    iget v0, p1, Lcom/android/services/telephony/common/Call;->mIsIncoming:I

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mIsIncoming:I

    .line 256
    iget v0, p1, Lcom/android/services/telephony/common/Call;->mBlockType:I

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mBlockType:I

    .line 260
    iget-wide v0, p1, Lcom/android/services/telephony/common/Call;->mConnectTimeReal:J

    iput-wide v0, p0, Lcom/android/services/telephony/common/Call;->mConnectTimeReal:J

    .line 262
    return-void
.end method


# virtual methods
.method public addCapabilities(I)V
    .locals 1
    .param p1, "capabilities"    # I

    .prologue
    .line 345
    iget v0, p0, Lcom/android/services/telephony/common/Call;->mCapabilities:I

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/Call;->setCapabilities(I)V

    .line 346
    return-void
.end method

.method public addChildId(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mChildCallIds:Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 374
    return-void
.end method

.method public can(I)Z
    .locals 1
    .param p1, "capabilities"    # I

    .prologue
    .line 341
    iget v0, p0, Lcom/android/services/telephony/common/Call;->mCapabilities:I

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 467
    const/4 v0, 0x0

    return v0
.end method

.method public getBlockType()I
    .locals 1

    .prologue
    .line 726
    iget v0, p0, Lcom/android/services/telephony/common/Call;->mBlockType:I

    return v0
.end method

.method public getCallId()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/android/services/telephony/common/Call;->mCallId:I

    return v0
.end method

.method public getCallType()I
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/CallIdentification;->getCallType()I

    move-result v0

    return v0
.end method

.method public getCapabilities()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/android/services/telephony/common/Call;->mCapabilities:I

    return v0
.end method

.method public getChildCallIds()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mChildCallIds:Ljava/util/SortedSet;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/CallIdentification;->getCnapName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCnapNamePresentation()I
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/CallIdentification;->getCnapNamePresentation()I

    move-result v0

    return v0
.end method

.method public getConferenceId()I
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/CallIdentification;->getConferenceId()I

    move-result v0

    return v0
.end method

.method public getConnectTime()J
    .locals 2

    .prologue
    .line 361
    iget-wide v0, p0, Lcom/android/services/telephony/common/Call;->mConnectTime:J

    return-wide v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 353
    iget-wide v0, p0, Lcom/android/services/telephony/common/Call;->mCreateTime:J

    return-wide v0
.end method

.method public getDisconnectCause()Lcom/android/services/telephony/common/Call$DisconnectCause;
    .locals 2

    .prologue
    .line 321
    iget v0, p0, Lcom/android/services/telephony/common/Call;->mState:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/services/telephony/common/Call;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mDisconnectCause:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 325
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    goto :goto_0
.end method

.method public getDurationMillis()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 705
    iget-wide v2, p0, Lcom/android/services/telephony/common/Call;->mConnectTimeReal:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 708
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/services/telephony/common/Call;->mConnectTimeReal:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getGatewayNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mGatewayNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getGatewayPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mGatewayPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getIMSCallMode()I
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/CallIdentification;->getIMSCallMode()I

    move-result v0

    return v0
.end method

.method public getIdentification()Lcom/android/services/telephony/common/CallIdentification;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    return-object v0
.end method

.method public getIsIncoming()I
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Lcom/android/services/telephony/common/Call;->mIsIncoming:I

    return v0
.end method

.method public getLiveTalkId()J
    .locals 2

    .prologue
    .line 741
    iget-wide v0, p0, Lcom/android/services/telephony/common/Call;->mLiveTalkId:J

    return-wide v0
.end method

.method public getLiveTalkProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mLiveTalkProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/CallIdentification;->getNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/CallIdentification;->getNumberPresentation()I

    move-result v0

    return v0
.end method

.method public getPAUField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/CallIdentification;->getPAUField()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    .line 609
    iget v0, p0, Lcom/android/services/telephony/common/Call;->mPhoneId:I

    return v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 601
    iget v0, p0, Lcom/android/services/telephony/common/Call;->mPhoneType:I

    return v0
.end method

.method public getPostDialString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/CallIdentification;->getPostDialString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRejectCallNotifyMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mRejectMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getSlotId()I
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/CallIdentification;->getSlotId()I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/android/services/telephony/common/Call;->mState:I

    return v0
.end method

.method public getStateText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 585
    sget-object v0, Lcom/android/services/telephony/common/Call;->STATE_MAP:Ljava/util/Map;

    iget v1, p0, Lcom/android/services/telephony/common/Call;->mState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isConferenceCall()Z
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mChildCallIds:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isECCCall()Z
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/CallIdentification;->isECCCall()Z

    move-result v0

    return v0
.end method

.method public isIncoming()Z
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/CallIdentification;->isIncoming()Z

    move-result v0

    return v0
.end method

.method public isVideoCall()Z
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/CallIdentification;->isVideoCall()Z

    move-result v0

    return v0
.end method

.method public isVoLteConferenceCall()Z
    .locals 1

    .prologue
    .line 681
    const/4 v0, 0x0

    return v0
.end method

.method public isVoLteConferenceHost()Z
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/CallIdentification;->isVoLteConferenceHost()Z

    move-result v0

    return v0
.end method

.method public isWaitingCall()Z
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/CallIdentification;->isWaitingCall()Z

    move-result v0

    return v0
.end method

.method public markAsECCCall()V
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/CallIdentification;->markAsECCCall()V

    .line 624
    return-void
.end method

.method public markAsWaitingCall(Z)V
    .locals 1
    .param p1, "isWaiting"    # Z

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/common/CallIdentification;->markAsWaitingCall(Z)V

    .line 661
    return-void
.end method

.method public removeAllChildren()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mChildCallIds:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 370
    return-void
.end method

.method public removeChildId(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mChildCallIds:Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 366
    return-void
.end method

.method public setBlockType(I)V
    .locals 0
    .param p1, "blockType"    # I

    .prologue
    .line 722
    iput p1, p0, Lcom/android/services/telephony/common/Call;->mBlockType:I

    .line 723
    return-void
.end method

.method public setCallType(I)V
    .locals 1
    .param p1, "callType"    # I

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/common/CallIdentification;->setCallType(I)V

    .line 558
    return-void
.end method

.method public setCapabilities(I)V
    .locals 1
    .param p1, "capabilities"    # I

    .prologue
    .line 337
    and-int/lit16 v0, p1, 0x7fff

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mCapabilities:I

    .line 338
    return-void
.end method

.method public setCnapName(Ljava/lang/String;)V
    .locals 1
    .param p1, "cnapName"    # Ljava/lang/String;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/common/CallIdentification;->setCnapName(Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public setCnapNamePresentation(I)V
    .locals 1
    .param p1, "presentation"    # I

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/common/CallIdentification;->setCnapNamePresentation(I)V

    .line 310
    return-void
.end method

.method public setConferenceId(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/common/CallIdentification;->setConferenceId(I)V

    .line 691
    return-void
.end method

.method public setConnectTime(J)V
    .locals 0
    .param p1, "connectTime"    # J

    .prologue
    .line 357
    iput-wide p1, p0, Lcom/android/services/telephony/common/Call;->mConnectTime:J

    .line 358
    return-void
.end method

.method public setConnectTimeReal(J)V
    .locals 0
    .param p1, "realTime"    # J

    .prologue
    .line 718
    iput-wide p1, p0, Lcom/android/services/telephony/common/Call;->mConnectTimeReal:J

    .line 719
    return-void
.end method

.method public setCreateTime(J)V
    .locals 0
    .param p1, "createTime"    # J

    .prologue
    .line 349
    iput-wide p1, p0, Lcom/android/services/telephony/common/Call;->mCreateTime:J

    .line 350
    return-void
.end method

.method public setDisconnectCause(Lcom/android/services/telephony/common/Call$DisconnectCause;)V
    .locals 0
    .param p1, "cause"    # Lcom/android/services/telephony/common/Call$DisconnectCause;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/services/telephony/common/Call;->mDisconnectCause:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 330
    return-void
.end method

.method public setGatewayNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/services/telephony/common/Call;->mGatewayNumber:Ljava/lang/String;

    .line 393
    return-void
.end method

.method public setGatewayPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/services/telephony/common/Call;->mGatewayPackage:Ljava/lang/String;

    .line 401
    return-void
.end method

.method public setIMSCallMode(I)V
    .locals 1
    .param p1, "callMode"    # I

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/common/CallIdentification;->setIMSCallMode(I)V

    .line 678
    return-void
.end method

.method public setIsIncoming(I)V
    .locals 0
    .param p1, "incoming"    # I

    .prologue
    .line 573
    iput p1, p0, Lcom/android/services/telephony/common/Call;->mIsIncoming:I

    .line 574
    return-void
.end method

.method public setIsIncomingFlag(Z)V
    .locals 1
    .param p1, "isIncoming"    # Z

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/common/CallIdentification;->setIsIncomingFlag(Z)V

    .line 554
    return-void
.end method

.method public setLiveTalkId(Ljava/lang/Long;)V
    .locals 2
    .param p1, "liveTalkId"    # Ljava/lang/Long;

    .prologue
    .line 745
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/services/telephony/common/Call;->mLiveTalkId:J

    .line 746
    return-void
.end method

.method public setLiveTalkProvider(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 737
    iput-object p1, p0, Lcom/android/services/telephony/common/Call;->mLiveTalkProvider:Ljava/lang/String;

    .line 738
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/common/CallIdentification;->setNumber(Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public setNumberPresentation(I)V
    .locals 1
    .param p1, "presentation"    # I

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/common/CallIdentification;->setNumberPresentation(I)V

    .line 302
    return-void
.end method

.method public setPAUField(Ljava/lang/String;)V
    .locals 1
    .param p1, "pau"    # Ljava/lang/String;

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/common/CallIdentification;->setPAUField(Ljava/lang/String;)V

    .line 641
    return-void
.end method

.method public setPhoneId(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .prologue
    .line 605
    iput p1, p0, Lcom/android/services/telephony/common/Call;->mPhoneId:I

    .line 606
    return-void
.end method

.method public setPhoneType(I)V
    .locals 0
    .param p1, "phoneType"    # I

    .prologue
    .line 597
    iput p1, p0, Lcom/android/services/telephony/common/Call;->mPhoneType:I

    .line 598
    return-void
.end method

.method public setPostDialString(Ljava/lang/String;)V
    .locals 1
    .param p1, "postDialString"    # Ljava/lang/String;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/common/CallIdentification;->setPostDialString(Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public setRejectCallNotifyMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 589
    iput-object p1, p0, Lcom/android/services/telephony/common/Call;->mRejectMessage:Ljava/lang/String;

    .line 590
    return-void
.end method

.method public setSlotId(I)V
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/common/CallIdentification;->setSlotId(I)V

    .line 570
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 293
    iput p1, p0, Lcom/android/services/telephony/common/Call;->mState:I

    .line 294
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 489
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCallId"

    iget v2, p0, Lcom/android/services/telephony/common/Call;->mCallId:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mState"

    sget-object v2, Lcom/android/services/telephony/common/Call;->STATE_MAP:Ljava/util/Map;

    iget v3, p0, Lcom/android/services/telephony/common/Call;->mState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mDisconnectCause"

    iget-object v2, p0, Lcom/android/services/telephony/common/Call;->mDisconnectCause:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCapabilities"

    iget v2, p0, Lcom/android/services/telephony/common/Call;->mCapabilities:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCreateTime"

    iget-wide v2, p0, Lcom/android/services/telephony/common/Call;->mCreateTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mConnectTime"

    iget-wide v2, p0, Lcom/android/services/telephony/common/Call;->mConnectTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mChildCallIds"

    iget-object v2, p0, Lcom/android/services/telephony/common/Call;->mChildCallIds:Ljava/util/SortedSet;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mGatewayNumber"

    iget-object v2, p0, Lcom/android/services/telephony/common/Call;->mGatewayNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/services/telephony/common/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mGatewayPackage"

    iget-object v2, p0, Lcom/android/services/telephony/common/Call;->mGatewayPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIdentification"

    iget-object v2, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mRejectMessage"

    iget-object v2, p0, Lcom/android/services/telephony/common/Call;->mRejectMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mPhoneType"

    iget v2, p0, Lcom/android/services/telephony/common/Call;->mPhoneType:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mPhoneId"

    iget v2, p0, Lcom/android/services/telephony/common/Call;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsIncoming"

    iget v2, p0, Lcom/android/services/telephony/common/Call;->mIsIncoming:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mBlockType"

    iget v2, p0, Lcom/android/services/telephony/common/Call;->mBlockType:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mConnectTimeReal"

    iget-wide v2, p0, Lcom/android/services/telephony/common/Call;->mConnectTimeReal:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

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
    .line 409
    iget v0, p0, Lcom/android/services/telephony/common/Call;->mCallId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    iget v0, p0, Lcom/android/services/telephony/common/Call;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getDisconnectCause()Lcom/android/services/telephony/common/Call$DisconnectCause;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getCapabilities()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getCreateTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 414
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getConnectTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 415
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mChildCallIds:Ljava/util/SortedSet;

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 416
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getGatewayNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getGatewayPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 421
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mRejectMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 423
    iget v0, p0, Lcom/android/services/telephony/common/Call;->mPhoneType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    iget v0, p0, Lcom/android/services/telephony/common/Call;->mPhoneId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    iget v0, p0, Lcom/android/services/telephony/common/Call;->mIsIncoming:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    iget v0, p0, Lcom/android/services/telephony/common/Call;->mBlockType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 431
    iget-wide v0, p0, Lcom/android/services/telephony/common/Call;->mConnectTimeReal:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 433
    return-void
.end method
