.class Lcom/android/internal/telephony/cat/OpenChannelParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;
    }
.end annotation


# instance fields
.field public bearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

.field public bufferSize:I

.field public dataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

.field public gprsParams:Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;

.field public localAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

.field public textMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field public transportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/bip/BearerDesc;ILcom/android/internal/telephony/cat/bip/OtherAddress;Lcom/android/internal/telephony/cat/bip/TransportProtocol;Lcom/android/internal/telephony/cat/bip/OtherAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/cat/TextMessage;)V
    .locals 2
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "bearerDesc"    # Lcom/android/internal/telephony/cat/bip/BearerDesc;
    .param p3, "size"    # I
    .param p4, "localAddress"    # Lcom/android/internal/telephony/cat/bip/OtherAddress;
    .param p5, "transportProtocol"    # Lcom/android/internal/telephony/cat/bip/TransportProtocol;
    .param p6, "address"    # Lcom/android/internal/telephony/cat/bip/OtherAddress;
    .param p7, "apn"    # Ljava/lang/String;
    .param p8, "login"    # Ljava/lang/String;
    .param p9, "pwd"    # Ljava/lang/String;
    .param p10, "textMsg"    # Lcom/android/internal/telephony/cat/TextMessage;

    .prologue
    const/4 v1, 0x0

    .line 240
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 227
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->bearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    .line 228
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->bufferSize:I

    .line 229
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->localAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    .line 230
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->transportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    .line 231
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->dataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    .line 232
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 234
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->gprsParams:Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;

    .line 241
    iput-object p2, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->bearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    .line 242
    iput p3, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->bufferSize:I

    .line 243
    iput-object p4, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->localAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    .line 244
    iput-object p5, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->transportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    .line 245
    iput-object p6, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->dataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    .line 246
    iput-object p10, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 247
    new-instance v0, Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;

    invoke-direct {v0, p0, p7, p8, p9}, Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;-><init>(Lcom/android/internal/telephony/cat/OpenChannelParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->gprsParams:Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;

    .line 248
    return-void
.end method
