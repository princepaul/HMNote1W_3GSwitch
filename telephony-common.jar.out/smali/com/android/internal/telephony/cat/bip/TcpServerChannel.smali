.class Lcom/android/internal/telephony/cat/bip/TcpServerChannel;
.super Lcom/android/internal/telephony/cat/bip/Channel;
.source "Channel.java"


# instance fields
.field private mCloseBackToTcpListen:Z

.field protected mInput:Ljava/io/DataInputStream;

.field protected mOutput:Ljava/io/BufferedOutputStream;

.field protected mSSocket:Ljava/net/ServerSocket;

.field protected mSocket:Ljava/net/Socket;

.field private rt:Ljava/lang/Thread;


# direct methods
.method constructor <init>(IIIIILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/bip/BipManager;)V
    .locals 9
    .param p1, "cid"    # I
    .param p2, "linkMode"    # I
    .param p3, "protocolType"    # I
    .param p4, "port"    # I
    .param p5, "bufferSize"    # I
    .param p6, "handler"    # Lcom/android/internal/telephony/cat/CatService;
    .param p7, "bipManager"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 667
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cat/bip/Channel;-><init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/bip/BipManager;)V

    .line 659
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSSocket:Ljava/net/ServerSocket;

    .line 660
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 661
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    .line 662
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    .line 663
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->rt:Ljava/lang/Thread;

    .line 664
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mCloseBackToTcpListen:Z

    .line 668
    return-void
.end method


# virtual methods
.method public closeChannel()I
    .locals 1

    .prologue
    .line 706
    const/4 v0, 0x0

    .line 756
    .local v0, "ret":I
    return v0
.end method

.method public getTcpStatus()B
    .locals 1

    .prologue
    .line 976
    const/4 v0, 0x0

    return v0
.end method

.method public getTxAvailBufferSize()I
    .locals 1

    .prologue
    .line 878
    const/4 v0, 0x0

    return v0
.end method

.method public isCloseBackToTcpListen()Z
    .locals 1

    .prologue
    .line 985
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mCloseBackToTcpListen:Z

    return v0
.end method

.method public openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I
    .locals 1
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 671
    const/4 v0, 0x0

    .line 702
    .local v0, "ret":I
    return v0
.end method

.method public receiveData(ILcom/android/internal/telephony/cat/bip/ReceiveDataResult;)I
    .locals 3
    .param p1, "requestSize"    # I
    .param p2, "rdr"    # Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;

    .prologue
    .line 882
    const-string v1, "[BIP]"

    const-string v2, "[UICC]new receiveData method"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    const/4 v0, 0x0

    .line 950
    .local v0, "ret":I
    return v0
.end method

.method public receiveData(I)Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;
    .locals 1
    .param p1, "requestCount"    # I

    .prologue
    .line 761
    new-instance v0, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;-><init>()V

    .line 817
    .local v0, "ret":Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;
    return-object v0
.end method

.method public sendData([BI)I
    .locals 1
    .param p1, "data"    # [B
    .param p2, "mode"    # I

    .prologue
    .line 821
    const/4 v0, 0x0

    .line 868
    .local v0, "ret":I
    return v0
.end method

.method public setCloseBackToTcpListen(Z)V
    .locals 0
    .param p1, "isBackToTcpListen"    # Z

    .prologue
    .line 983
    return-void
.end method

.method public setTcpStatus(BZ)V
    .locals 0
    .param p1, "status"    # B
    .param p2, "isPackED"    # Z

    .prologue
    .line 965
    return-void
.end method
