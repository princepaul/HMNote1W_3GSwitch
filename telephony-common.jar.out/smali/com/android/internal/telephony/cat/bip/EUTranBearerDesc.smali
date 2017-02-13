.class public Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;
.super Lcom/android/internal/telephony/cat/bip/BearerDesc;
.source "EUTranBearerDesc.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public QCI:I

.field public guarBitRateD:I

.field public guarBitRateDEx:I

.field public guarBitRateU:I

.field public guarBitRateUEx:I

.field public maxBitRateD:I

.field public maxBitRateDEx:I

.field public maxBitRateU:I

.field public maxBitRateUEx:I

.field public pdnType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BearerDesc;-><init>()V

    .line 64
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->QCI:I

    .line 65
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->maxBitRateU:I

    .line 66
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->maxBitRateD:I

    .line 67
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->guarBitRateU:I

    .line 68
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->guarBitRateD:I

    .line 69
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->maxBitRateUEx:I

    .line 70
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->maxBitRateDEx:I

    .line 71
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->guarBitRateUEx:I

    .line 72
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->guarBitRateDEx:I

    .line 73
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->pdnType:I

    .line 76
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->bearerType:I

    .line 77
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BearerDesc;-><init>()V

    .line 64
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->QCI:I

    .line 65
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->maxBitRateU:I

    .line 66
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->maxBitRateD:I

    .line 67
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->guarBitRateU:I

    .line 68
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->guarBitRateD:I

    .line 69
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->maxBitRateUEx:I

    .line 70
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->maxBitRateDEx:I

    .line 71
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->guarBitRateUEx:I

    .line 72
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->guarBitRateDEx:I

    .line 73
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->pdnType:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->bearerType:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->QCI:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->maxBitRateU:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->maxBitRateD:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->guarBitRateU:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->guarBitRateD:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->maxBitRateUEx:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->maxBitRateDEx:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->guarBitRateUEx:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->guarBitRateDEx:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->pdnType:I

    .line 91
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc$1;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 94
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->bearerType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->QCI:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->maxBitRateU:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->maxBitRateD:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->guarBitRateU:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->guarBitRateD:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->maxBitRateUEx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->maxBitRateDEx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->guarBitRateUEx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->guarBitRateDEx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->pdnType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    return-void
.end method
