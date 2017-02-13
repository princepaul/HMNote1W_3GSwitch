.class public Lcom/android/internal/telephony/cat/bip/BipManager;
.super Ljava/lang/Object;
.source "BipManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/bip/BipManager$RecvDataRunnable;,
        Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;,
        Lcom/android/internal/telephony/cat/bip/BipManager$SendDataThread;
    }
.end annotation


# static fields
.field private static final CONN_MGR_TIMEOUT:I = 0x7530

.field private static final CONN_RETRY_TIMEOUT:I = 0x1388

.field public static final MSG_ID_BIP_CONN_MGR_TIMEOUT:I = 0xa

.field private static instance1:Lcom/android/internal/telephony/cat/bip/BipManager;

.field private static instance2:Lcom/android/internal/telephony/cat/bip/BipManager;

.field private static instance3:Lcom/android/internal/telephony/cat/bip/BipManager;

.field private static instance4:Lcom/android/internal/telephony/cat/bip/BipManager;


# instance fields
.field final NETWORK_TYPE:I

.field private isConnMgrIntentTimeout:Z

.field private isParamsValid:Z

.field mApn:Ljava/lang/String;

.field mAutoReconnected:Z

.field mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

.field private mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

.field private mBipMgrHandler:Landroid/os/Handler;

.field mBufferSize:I

.field private mChannel:Lcom/android/internal/telephony/cat/bip/Channel;

.field private mChannelId:I

.field private mChannelStatus:I

.field private mChannelStatusDataObject:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

.field private mHandler:Landroid/os/Handler;

.field private mIsOpenInProgress:Z

.field mLinkMode:I

.field mLocalAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

.field mLogin:Ljava/lang/String;

.field private mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

.field mPassword:Ljava/lang/String;

.field private mSimId:I

.field mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    sput-object v0, Lcom/android/internal/telephony/cat/bip/BipManager;->instance1:Lcom/android/internal/telephony/cat/bip/BipManager;

    .line 88
    sput-object v0, Lcom/android/internal/telephony/cat/bip/BipManager;->instance2:Lcom/android/internal/telephony/cat/bip/BipManager;

    .line 89
    sput-object v0, Lcom/android/internal/telephony/cat/bip/BipManager;->instance3:Lcom/android/internal/telephony/cat/bip/BipManager;

    .line 90
    sput-object v0, Lcom/android/internal/telephony/cat/bip/BipManager;->instance4:Lcom/android/internal/telephony/cat/bip/BipManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "sim_id"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    .line 93
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 95
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    .line 97
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 99
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    .line 100
    iput v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBufferSize:I

    .line 101
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLocalAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    .line 102
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    .line 103
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    .line 104
    iput v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLinkMode:I

    .line 105
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mAutoReconnected:Z

    .line 107
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mApn:Ljava/lang/String;

    .line 108
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLogin:Ljava/lang/String;

    .line 109
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mPassword:Ljava/lang/String;

    .line 111
    iput v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->NETWORK_TYPE:I

    .line 113
    iput v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    .line 114
    iput v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    .line 115
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannel:Lcom/android/internal/telephony/cat/bip/Channel;

    .line 116
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatusDataObject:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    .line 117
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->isParamsValid:Z

    .line 118
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimId:I

    .line 123
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->isConnMgrIntentTimeout:Z

    .line 124
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    .line 125
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    .line 127
    new-instance v1, Lcom/android/internal/telephony/cat/bip/BipManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/bip/BipManager$1;-><init>(Lcom/android/internal/telephony/cat/bip/BipManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipMgrHandler:Landroid/os/Handler;

    .line 1095
    new-instance v1, Lcom/android/internal/telephony/cat/bip/BipManager$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/bip/BipManager$2;-><init>(Lcom/android/internal/telephony/cat/bip/BipManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    const-string v1, "[BIP]"

    const-string v2, "Construct BipManager"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    if-nez p1, :cond_0

    .line 149
    const-string v1, "[BIP]"

    const-string v2, "Fail to construct BipManager"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    .line 153
    iput p3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimId:I

    .line 154
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSimId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 156
    iput-object p2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    .line 157
    new-instance v1, Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    .line 159
    if-nez p3, :cond_2

    sget-object v1, Lcom/android/internal/telephony/cat/bip/BipManager;->instance1:Lcom/android/internal/telephony/cat/bip/BipManager;

    if-nez v1, :cond_2

    .line 160
    const-string v1, "[BIP]"

    const-string v2, "Construct instance for sim 1"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    sput-object p0, Lcom/android/internal/telephony/cat/bip/BipManager;->instance1:Lcom/android/internal/telephony/cat/bip/BipManager;

    .line 173
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 174
    .local v0, "connFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    return-void

    .line 162
    .end local v0    # "connFilter":Landroid/content/IntentFilter;
    :cond_2
    if-ne p3, v4, :cond_3

    sget-object v1, Lcom/android/internal/telephony/cat/bip/BipManager;->instance2:Lcom/android/internal/telephony/cat/bip/BipManager;

    if-nez v1, :cond_3

    .line 163
    const-string v1, "[BIP]"

    const-string v2, "Construct instance for sim 2"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sput-object p0, Lcom/android/internal/telephony/cat/bip/BipManager;->instance2:Lcom/android/internal/telephony/cat/bip/BipManager;

    goto :goto_0

    .line 165
    :cond_3
    const/4 v1, 0x2

    if-ne p3, v1, :cond_4

    sget-object v1, Lcom/android/internal/telephony/cat/bip/BipManager;->instance3:Lcom/android/internal/telephony/cat/bip/BipManager;

    if-nez v1, :cond_4

    .line 166
    const-string v1, "[BIP]"

    const-string v2, "Construct instance for sim 3"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    sput-object p0, Lcom/android/internal/telephony/cat/bip/BipManager;->instance3:Lcom/android/internal/telephony/cat/bip/BipManager;

    goto :goto_0

    .line 168
    :cond_4
    const/4 v1, 0x3

    if-ne p3, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/cat/bip/BipManager;->instance4:Lcom/android/internal/telephony/cat/bip/BipManager;

    if-nez v1, :cond_1

    .line 169
    const-string v1, "[BIP]"

    const-string v2, "Construct instance for sim 3"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    sput-object p0, Lcom/android/internal/telephony/cat/bip/BipManager;->instance4:Lcom/android/internal/telephony/cat/bip/BipManager;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cat/bip/BipManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/cat/bip/BipManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cat/bip/BipManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->isConnMgrIntentTimeout:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/cat/bip/BipManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 86
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/cat/bip/BipManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/cat/bip/BipManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->isConnMgrIntentTimeout:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipMgrHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/CatCmdMessage;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cat/bip/BipManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 86
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/bip/BipChannelManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/cat/bip/BipManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 86
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimId:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/cat/bip/BipManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->requestRouteToHost()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/cat/bip/BipManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->establishLink()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/cat/bip/BipManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;
    .param p1, "x1"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/bip/BipManager;->updateCurrentChannelStatus(I)V

    return-void
.end method

.method private checkNetworkInfo(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$State;)Z
    .locals 6
    .param p1, "nwInfo"    # Landroid/net/NetworkInfo;
    .param p2, "exState"    # Landroid/net/NetworkInfo$State;

    .prologue
    const/4 v3, 0x0

    .line 732
    if-nez p1, :cond_0

    move v2, v3

    .line 745
    :goto_0
    return v2

    .line 736
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 737
    .local v1, "type":I
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 738
    .local v0, "state":Landroid/net/NetworkInfo$State;
    const-string v4, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network type is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_1

    const-string v2, "MOBILE"

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const-string v2, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    if-nez v1, :cond_2

    if-ne v0, p2, :cond_2

    .line 742
    const/4 v2, 0x1

    goto :goto_0

    .line 738
    :cond_1
    const-string v2, "WIFI"

    goto :goto_1

    :cond_2
    move v2, v3

    .line 745
    goto :goto_0
.end method

.method private establishLink()I
    .locals 14

    .prologue
    const/4 v13, 0x7

    const/4 v12, 0x1

    .line 749
    const/4 v11, 0x0

    .line 750
    .local v11, "ret":I
    const/4 v9, 0x0

    .line 796
    .local v9, "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v1, v1, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    if-ne v1, v12, :cond_2

    .line 798
    const-string v1, "[BIP]"

    const-string v2, "BM-establishLink: establish a UDP link"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/cat/bip/UdpChannel;

    iget v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLinkMode:I

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v3, v3, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/bip/OtherAddress;->address:Ljava/net/InetAddress;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v5, v5, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->portNumber:I

    iget v6, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBufferSize:I

    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v7, Lcom/android/internal/telephony/cat/CatService;

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cat/bip/UdpChannel;-><init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/bip/BipManager;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    .end local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .local v0, "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/bip/Channel;->openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I

    move-result v11

    .line 809
    if-eqz v11, :cond_0

    const/4 v1, 0x3

    if-ne v11, v1, :cond_1

    .line 810
    :cond_0
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    .line 811
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->addChannel(ILcom/android/internal/telephony/cat/bip/Channel;)I

    .line 822
    :goto_0
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BM-establishLink: ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v11

    .line 823
    :goto_1
    return v1

    .line 803
    .end local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    :catch_0
    move-exception v10

    .line 804
    .local v10, "ne":Ljava/lang/NullPointerException;
    const-string v1, "[BIP]"

    const-string v2, "BM-establishLink: NE,new UDP client channel fail."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 805
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 806
    const/4 v1, 0x5

    move-object v0, v9

    .end local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    goto :goto_1

    .line 813
    .end local v10    # "ne":Ljava/lang/NullPointerException;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v1, v2, v12}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->releaseChannelId(II)V

    .line 814
    iput v13, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    goto :goto_0

    .line 817
    .end local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    :cond_2
    const-string v1, "[BIP]"

    const-string v2, "BM-establishLink: unsupported channel type"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const/4 v11, 0x4

    .line 819
    iput v13, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    move-object v0, v9

    .end local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    goto :goto_0
.end method

.method private getDataConnectionFromSetting()I
    .locals 4

    .prologue
    .line 202
    const/4 v0, -0x1

    .line 204
    .local v0, "currentDataConnectionSimId":I
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gprs_connection_setting"

    const/4 v3, -0x4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 206
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default Data Setting value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return v0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;I)Lcom/android/internal/telephony/cat/bip/BipManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 179
    if-nez p2, :cond_0

    sget-object v0, Lcom/android/internal/telephony/cat/bip/BipManager;->instance1:Lcom/android/internal/telephony/cat/bip/BipManager;

    if-nez v0, :cond_0

    .line 180
    const-string v0, "[BIP]"

    const-string v1, "Construct instance for sim 1"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v0, Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/cat/bip/BipManager;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    sput-object v0, Lcom/android/internal/telephony/cat/bip/BipManager;->instance1:Lcom/android/internal/telephony/cat/bip/BipManager;

    .line 182
    sget-object v0, Lcom/android/internal/telephony/cat/bip/BipManager;->instance1:Lcom/android/internal/telephony/cat/bip/BipManager;

    .line 197
    :goto_0
    return-object v0

    .line 183
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/cat/bip/BipManager;->instance2:Lcom/android/internal/telephony/cat/bip/BipManager;

    if-nez v0, :cond_1

    .line 184
    const-string v0, "[BIP]"

    const-string v1, "Construct instance for sim 2"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v0, Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/cat/bip/BipManager;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    sput-object v0, Lcom/android/internal/telephony/cat/bip/BipManager;->instance2:Lcom/android/internal/telephony/cat/bip/BipManager;

    .line 186
    sget-object v0, Lcom/android/internal/telephony/cat/bip/BipManager;->instance2:Lcom/android/internal/telephony/cat/bip/BipManager;

    goto :goto_0

    .line 187
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/cat/bip/BipManager;->instance3:Lcom/android/internal/telephony/cat/bip/BipManager;

    if-nez v0, :cond_2

    .line 188
    const-string v0, "[BIP]"

    const-string v1, "Construct instance for sim 3"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance v0, Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/cat/bip/BipManager;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    sput-object v0, Lcom/android/internal/telephony/cat/bip/BipManager;->instance3:Lcom/android/internal/telephony/cat/bip/BipManager;

    .line 190
    sget-object v0, Lcom/android/internal/telephony/cat/bip/BipManager;->instance3:Lcom/android/internal/telephony/cat/bip/BipManager;

    goto :goto_0

    .line 191
    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    sget-object v0, Lcom/android/internal/telephony/cat/bip/BipManager;->instance4:Lcom/android/internal/telephony/cat/bip/BipManager;

    if-nez v0, :cond_3

    .line 192
    const-string v0, "[BIP]"

    const-string v1, "Construct instance for sim 3"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v0, Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/cat/bip/BipManager;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    sput-object v0, Lcom/android/internal/telephony/cat/bip/BipManager;->instance4:Lcom/android/internal/telephony/cat/bip/BipManager;

    .line 194
    sget-object v0, Lcom/android/internal/telephony/cat/bip/BipManager;->instance4:Lcom/android/internal/telephony/cat/bip/BipManager;

    goto :goto_0

    .line 196
    :cond_3
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bip instance was generated. sim id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestRouteToHost()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    .line 714
    const-string v3, "[BIP]"

    const-string v4, "requestRouteToHost"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const/4 v1, 0x0

    .line 716
    .local v1, "addressBytes":[B
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    if-eqz v3, :cond_0

    .line 717
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/bip/OtherAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 722
    const/4 v0, 0x0

    .line 723
    .local v0, "addr":I
    aget-byte v3, v1, v5

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const/4 v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v3, v2

    .line 728
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v5, v0}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v2

    .end local v0    # "addr":I
    :goto_0
    return v2

    .line 719
    :cond_0
    const-string v3, "[BIP]"

    const-string v4, "mDataDestinationAddress is null"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendBipConnTimeOutMsg(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 4
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 700
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipMgrHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 701
    .local v0, "bipTimerMsg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 702
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipMgrHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 703
    return-void
.end method

.method private setApnParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "pwd"    # Ljava/lang/String;

    .prologue
    .line 827
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: enter"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    if-nez p1, :cond_0

    .line 829
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: No apn parameters"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    :goto_0
    return-void

    .line 833
    :cond_0
    const/4 v13, 0x0

    .line 834
    .local v13, "uri":Landroid/net/Uri;
    const/4 v12, 0x0

    .line 835
    .local v12, "numeric":Ljava/lang/String;
    const/4 v9, 0x0

    .line 836
    .local v9, "mcc":Ljava/lang/String;
    const/4 v10, 0x0

    .line 837
    .local v10, "mnc":Ljava/lang/String;
    const-string v7, "supl"

    .line 843
    .local v7, "apnType":Ljava/lang/String;
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: URI use telephony provider enhancement"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    iget v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimId:I

    if-nez v1, :cond_4

    .line 845
    sget-object v13, Landroid/provider/Telephony$Carriers$SIM1Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 846
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 865
    :goto_1
    if-nez v13, :cond_1

    .line 866
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: Invalid uri"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 869
    :cond_1
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_3

    .line 870
    const/4 v8, 0x0

    .line 871
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v12, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 872
    const/4 v1, 0x3

    invoke-virtual {v12, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 873
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BM-setApnParams: mcc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mnc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name = \'BIP\' and numeric = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 877
    .local v4, "selection":Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimId:I

    if-nez v1, :cond_8

    .line 878
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers$SIM1Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 895
    :cond_2
    :goto_2
    if-eqz v8, :cond_3

    .line 896
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 897
    .local v14, "values":Landroid/content/ContentValues;
    const-string v1, "name"

    const-string v2, "BIP"

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    const-string v1, "apn"

    move-object/from16 v0, p1

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    const-string v1, "user"

    move-object/from16 v0, p2

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    const-string v1, "password"

    move-object/from16 v0, p3

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    const-string v1, "type"

    invoke-virtual {v14, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    const-string v1, "mcc"

    invoke-virtual {v14, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    const-string v1, "mnc"

    invoke-virtual {v14, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    const-string v1, "numeric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_c

    .line 909
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: insert one record"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v13, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 911
    .local v11, "newRow":Landroid/net/Uri;
    if-eqz v11, :cond_b

    .line 912
    const-string v1, "[BIP]"

    const-string v2, "insert a new record into db"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    .end local v11    # "newRow":Landroid/net/Uri;
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 926
    .end local v4    # "selection":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_3
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: exit"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 847
    :cond_4
    iget v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 848
    sget-object v13, Landroid/provider/Telephony$Carriers$SIM2Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 849
    const-string v1, "gsm.sim.operator.numeric.2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 850
    :cond_5
    iget v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 851
    sget-object v13, Landroid/provider/Telephony$Carriers$SIM3Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 852
    const-string v1, "gsm.sim.operator.numeric.3"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 853
    :cond_6
    iget v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimId:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    .line 854
    sget-object v13, Landroid/provider/Telephony$Carriers$SIM4Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 855
    const-string v1, "gsm.sim.operator.numeric.4"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 857
    :cond_7
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: invalid sim id"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 880
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_8
    iget v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 881
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers$SIM2Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto/16 :goto_2

    .line 883
    :cond_9
    iget v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    .line 884
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers$SIM3Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto/16 :goto_2

    .line 886
    :cond_a
    iget v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimId:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 887
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers$SIM4Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto/16 :goto_2

    .line 914
    .restart local v11    # "newRow":Landroid/net/Uri;
    .restart local v14    # "values":Landroid/content/ContentValues;
    :cond_b
    const-string v1, "[BIP]"

    const-string v2, "Fail to insert apn params into db"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 917
    .end local v11    # "newRow":Landroid/net/Uri;
    :cond_c
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: update one record"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v13, v14, v4, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private updateCurrentChannelStatus(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 706
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->updateChannelStatus(II)V

    .line 707
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iput p1, v1, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    :goto_0
    return-void

    .line 708
    :catch_0
    move-exception v0

    .line 709
    .local v0, "ne":Ljava/lang/NullPointerException;
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCurrentChannelStatus id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 710
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public closeChannel(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 499
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v1, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->getCmdMessage()Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    .line 501
    .local v0, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new closeChannel, mCloseCid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCloseCid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cat/bip/BipManager;->closeChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    .line 504
    return-void
.end method

.method public closeChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 12
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x3

    const/4 v7, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x7

    .line 431
    const-string v5, "[BIP]"

    const-string v6, "BM-closeChannel: enter"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const/4 v3, 0x0

    .line 434
    .local v3, "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    iget v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCloseCid:I

    .line 436
    .local v1, "cId":I
    iput v10, p2, Landroid/os/Message;->arg1:I

    .line 438
    if-ltz v1, :cond_0

    const/4 v5, 0x1

    if-ge v5, v1, :cond_1

    .line 439
    :cond_0
    const-string v5, "[BIP]"

    const-string v6, "BM-closeChannel: channel id is wrong"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iput v9, p2, Landroid/os/Message;->arg1:I

    .line 490
    :goto_0
    iput-boolean v10, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->isParamsValid:Z

    .line 492
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 493
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 494
    const-string v5, "[BIP]"

    const-string v6, "BM-closeChannel: exit"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    return-void

    .line 443
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getBipChannelStatus(I)I

    move-result v5

    if-nez v5, :cond_2

    .line 444
    const/4 v5, 0x7

    iput v5, p2, Landroid/os/Message;->arg1:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 485
    :catch_0
    move-exception v2

    .line 486
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v5, "[BIP]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BM-closeChannel: IndexOutOfBoundsException cid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    iput v9, p2, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 445
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getBipChannelStatus(I)I

    move-result v5

    if-ne v7, v5, :cond_3

    .line 446
    const/16 v5, 0x8

    iput v5, p2, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 448
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;

    move-result-object v3

    .line 449
    if-nez v3, :cond_4

    .line 450
    const-string v5, "[BIP]"

    const-string v6, "BM-closeChannel: channel has already been closed"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const/4 v5, 0x7

    iput v5, p2, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 454
    :cond_4
    const/4 v4, 0x0

    .line 455
    .local v4, "tcpSerCh":Lcom/android/internal/telephony/cat/bip/TcpServerChannel;
    iget v5, v3, Lcom/android/internal/telephony/cat/bip/Channel;->mProtocolType:I

    if-ne v11, v5, :cond_7

    .line 456
    instance-of v5, v3, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    if-eqz v5, :cond_5

    .line 457
    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    move-object v4, v0

    .line 458
    iget-boolean v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCloseBackToTcpListen:Z

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->setCloseBackToTcpListen(Z)V

    .line 472
    :cond_5
    :goto_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/bip/Channel;->closeChannel()I

    move-result v5

    iput v5, p2, Landroid/os/Message;->arg1:I

    .line 473
    iget v5, v3, Lcom/android/internal/telephony/cat/bip/Channel;->mProtocolType:I

    if-ne v11, v5, :cond_8

    .line 474
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->isCloseBackToTcpListen()Z

    move-result v5

    if-nez v5, :cond_6

    .line 475
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->removeChannel(I)I

    .line 481
    :cond_6
    :goto_2
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannel:Lcom/android/internal/telephony/cat/bip/Channel;

    .line 482
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    goto/16 :goto_0

    .line 461
    :cond_7
    const-string v5, "[BIP]"

    const-string v6, "BM-closeChannel: stop data connection"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v5, "[BIP]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "stopUsingNetworkFeature getDataConnectionFromSetting  =="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v6, 0x0

    const-string v7, "enableSUPL"

    iget v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimId:I

    invoke-virtual {v5, v6, v7, v8}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeatureGemini(ILjava/lang/String;I)I

    goto :goto_1

    .line 478
    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->removeChannel(I)I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public getBipChannelManager()Lcom/android/internal/telephony/cat/bip/BipChannelManager;
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    return-object v0
.end method

.method public getChannelId()I
    .locals 3

    .prologue
    .line 930
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BM-getChannelId: channel id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    return v0
.end method

.method public getChannelStatus(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 614
    const-string v1, "[BIP]"

    const-string v2, "new getChannelStatus"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v1, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->getCmdMessage()Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    .line 617
    .local v0, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cat/bip/BipManager;->getChannelStatus(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    .line 618
    return-void
.end method

.method public getChannelStatus(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 8
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    .line 677
    const/4 v3, 0x0

    .line 678
    .local v3, "ret":I
    const/4 v0, 0x1

    .line 679
    .local v0, "cId":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 682
    .local v1, "csList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/bip/ChannelStatus;>;"
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    if-gt v0, v7, :cond_1

    .line 683
    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->isChannelIdOccupied(I)Z

    move-result v4

    if-ne v7, v4, :cond_0

    .line 684
    const-string v4, "[BIP]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getChannelStatus: cId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 689
    :catch_0
    move-exception v2

    .line 690
    .local v2, "ne":Ljava/lang/NullPointerException;
    const-string v4, "[BIP]"

    const-string v5, "getChannelStatus: NE"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 691
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 693
    .end local v2    # "ne":Ljava/lang/NullPointerException;
    :cond_1
    iput-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusList:Ljava/util/List;

    .line 694
    iput v3, p2, Landroid/os/Message;->arg1:I

    .line 695
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 696
    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 697
    return-void
.end method

.method public getFreeChannelId()I
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getFreeChannelId()I

    move-result v0

    return v0
.end method

.method public openChannel(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 621
    const-string v1, "[BIP]"

    const-string v2, "new openChannel"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v1, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->getCmdMessage()Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    .line 623
    .local v0, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cat/bip/BipManager;->openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    .line 624
    return-void
.end method

.method public openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 10
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 265
    const/4 v1, 0x2

    .line 266
    .local v1, "result":I
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: enter"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const/4 v2, 0x0

    .line 268
    .local v2, "ret":I
    const/4 v0, 0x0

    .line 270
    .local v0, "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: init channel status object"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->isConnMgrIntentTimeout:Z

    .line 274
    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget-object v7, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v7, v7, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->acquireChannelId(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    .line 275
    iget v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    if-nez v4, :cond_0

    .line 276
    const-string v4, "[BIP]"

    const-string v5, "BM-openChannel: acquire channel id = 0"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const/4 v4, 0x5

    iput v4, p2, Landroid/os/Message;->arg1:I

    .line 278
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 279
    iput-object p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 280
    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 428
    :goto_0
    return-void

    .line 283
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iget v7, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-direct {v4, v7, v5, v5}, Lcom/android/internal/telephony/cat/bip/ChannelStatus;-><init>(III)V

    iput-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    .line 284
    iput-object p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 286
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    .line 287
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    if-eqz v4, :cond_3

    .line 288
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: bearer type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    iget v8, v8, Lcom/android/internal/telephony/cat/bip/BearerDesc;->bearerType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :goto_1
    iget v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    iput v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBufferSize:I

    .line 294
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: buffer size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLocalAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLocalAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    .line 297
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLocalAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    if-eqz v4, :cond_4

    .line 298
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: local address "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLocalAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/bip/OtherAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v8}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :goto_2
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    .line 304
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    if-eqz v4, :cond_5

    .line 305
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: transport protocol type/port "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v8, v8, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v8, v8, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->portNumber:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :goto_3
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    .line 312
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    if-eqz v4, :cond_6

    .line 313
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: dest address "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/bip/OtherAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v8}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :goto_4
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    if-nez v4, :cond_7

    const-string v4, "TestGp.rs"

    :goto_5
    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mApn:Ljava/lang/String;

    .line 319
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 320
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: apn "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :goto_6
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLogin:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLogin:Ljava/lang/String;

    .line 327
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: login "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLogin:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mPwd:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mPassword:Ljava/lang/String;

    .line 329
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: password "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mPwd:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdQualifier()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v6, :cond_9

    move v4, v5

    :goto_7
    iput v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLinkMode:I

    .line 334
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: mLinkMode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdQualifier()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdQualifier()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_a

    move v4, v5

    :goto_8
    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mAutoReconnected:Z

    .line 347
    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mApn:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLogin:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mPassword:Ljava/lang/String;

    invoke-direct {p0, v4, v7, v8}, Lcom/android/internal/telephony/cat/bip/BipManager;->setApnParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v4, "gsm.stk.bip"

    const-string v7, "1"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: call startUsingNetworkFeature:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v4, "[BIP]"

    const-string v7, "MAXCHANNELID :1"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v4, v4, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    if-ne v9, v4, :cond_c

    .line 356
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->establishLink()I

    move-result v2

    .line 358
    if-eqz v2, :cond_1

    if-ne v2, v9, :cond_b

    .line 359
    :cond_1
    const-string v4, "[BIP]"

    const-string v5, "BM-openChannel: channel is activated"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;

    move-result-object v0

    .line 361
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iget-object v5, v0, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iget v5, v5, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    iput v5, v4, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    .line 367
    :goto_9
    iput v2, p2, Landroid/os/Message;->arg1:I

    .line 368
    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v4, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 369
    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 427
    :cond_2
    :goto_a
    const-string v4, "[BIP]"

    const-string v5, "BM-openChannel: exit"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 290
    :cond_3
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: bearer type is null"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 300
    :cond_4
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: local address is null"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 308
    :cond_5
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: transport protocol is null"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 315
    :cond_6
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: dest address is null"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 318
    :cond_7
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    goto/16 :goto_5

    .line 322
    :cond_8
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: apn default TestGp.rs"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mApn:Ljava/lang/String;

    iput-object v7, v4, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    goto/16 :goto_6

    :cond_9
    move v4, v6

    .line 331
    goto/16 :goto_7

    :cond_a
    move v4, v6

    .line 336
    goto/16 :goto_8

    .line 363
    :cond_b
    const-string v4, "[BIP]"

    const-string v6, "BM-openChannel: channel is un-activated"

    invoke-static {v4, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iput v5, v4, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    goto :goto_9

    .line 372
    :cond_c
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->getDataConnectionFromSetting()I

    move-result v4

    iget v7, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimId:I

    if-ne v4, v7, :cond_d

    .line 373
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Start to establish data connection"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v7, "enableSUPL"

    iget v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimId:I

    invoke-virtual {v4, v5, v7, v8}, Landroid/net/ConnectivityManager;->startUsingNetworkFeatureGemini(ILjava/lang/String;I)I

    move-result v1

    .line 381
    :cond_d
    if-nez v1, :cond_11

    .line 382
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: APN already active"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->requestRouteToHost()Z

    move-result v4

    if-nez v4, :cond_e

    .line 384
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: Fail - requestRouteToHost"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const/4 v2, 0x2

    .line 387
    :cond_e
    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->isParamsValid:Z

    .line 388
    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    .line 389
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: establish data channel"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->establishLink()I

    move-result v2

    .line 392
    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    .line 393
    if-eqz v2, :cond_f

    if-ne v2, v9, :cond_10

    .line 394
    :cond_f
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: channel is activated"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const/16 v4, 0x80

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cat/bip/BipManager;->updateCurrentChannelStatus(I)V

    .line 400
    :goto_b
    iget-boolean v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    if-ne v6, v4, :cond_2

    .line 401
    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    .line 402
    iput v2, p2, Landroid/os/Message;->arg1:I

    .line 403
    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v4, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 404
    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_a

    .line 397
    :cond_10
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: channel is un-activated"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/bip/BipManager;->updateCurrentChannelStatus(I)V

    goto :goto_b

    .line 407
    :cond_11
    if-ne v1, v6, :cond_12

    .line 408
    const-string v4, "[BIP]"

    const-string v5, "BM-openChannel: APN request started"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->isParamsValid:Z

    .line 410
    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    .line 411
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/bip/BipManager;->sendBipConnTimeOutMsg(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto/16 :goto_a

    .line 413
    :cond_12
    const-string v4, "[BIP]"

    const-string v5, "BM-openChannel: startUsingNetworkFeature FAIL"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x25

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 415
    .local v3, "timerMsg":Landroid/os/Message;
    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 416
    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_a
.end method

.method public openChannelCompleted(ILcom/android/internal/telephony/cat/bip/Channel;)V
    .locals 6
    .param p1, "ret"    # I
    .param p2, "lChannel"    # Lcom/android/internal/telephony/cat/bip/Channel;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 939
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BM-openChannelCompleted: ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    if-ne p1, v5, :cond_0

    .line 942
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBufferSize:I

    iput v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    .line 944
    :cond_0
    if-eqz p1, :cond_1

    if-ne p1, v5, :cond_3

    .line 945
    :cond_1
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    .line 946
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v1, v2, p2}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->addChannel(ILcom/android/internal/telephony/cat/bip/Channel;)I

    .line 951
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, p2, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    .line 953
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->isConnMgrIntentTimeout:Z

    if-nez v1, :cond_2

    .line 954
    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    .line 955
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1e

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1, v2, p1, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 956
    .local v0, "response":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 957
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 958
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 960
    .end local v0    # "response":Landroid/os/Message;
    :cond_2
    return-void

    .line 948
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->releaseChannelId(II)V

    .line 949
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    goto :goto_0
.end method

.method public reOpenChannel()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 212
    const/4 v1, 0x2

    .line 213
    .local v1, "result":I
    const/4 v2, 0x0

    .line 215
    .local v2, "ret":I
    const-string v3, "[BIP]"

    const-string v4, "BM-reOpenChannel."

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->getDataConnectionFromSetting()I

    move-result v3

    iget v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimId:I

    if-ne v3, v4, :cond_0

    .line 218
    const-string v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BM-reOpenChannel Start to establish data connection"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v4, "enableSUPL"

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimId:I

    invoke-virtual {v3, v7, v4, v5}, Landroid/net/ConnectivityManager;->startUsingNetworkFeatureGemini(ILjava/lang/String;I)I

    move-result v1

    .line 226
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 227
    .local v0, "response":Landroid/os/Message;
    if-nez v1, :cond_4

    .line 228
    const-string v3, "[BIP]"

    const-string v4, "BM-reOpenChannel: APN already active"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->requestRouteToHost()Z

    move-result v3

    if-nez v3, :cond_1

    .line 230
    const-string v3, "[BIP]"

    const-string v4, "BM-reOpenChannel: Fail - requestRouteToHost"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const/4 v2, 0x2

    .line 233
    :cond_1
    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->isParamsValid:Z

    .line 235
    const-string v3, "[BIP]"

    const-string v4, "BM-reOpenChannel: establish data channel"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->establishLink()I

    move-result v2

    .line 237
    if-eqz v2, :cond_2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 238
    :cond_2
    const-string v3, "[BIP]"

    const-string v4, "BM-reOpenChannel: channel is activated"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iput-boolean v6, v3, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->isActivated:Z

    .line 245
    :goto_0
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 246
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 247
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 262
    :goto_1
    return-void

    .line 241
    :cond_3
    const-string v3, "[BIP]"

    const-string v4, "BM-reOpenChannel: channel is un-activated"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iput-boolean v7, v3, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->isActivated:Z

    goto :goto_0

    .line 248
    :cond_4
    if-ne v1, v6, :cond_5

    .line 249
    const-string v3, "[BIP]"

    const-string v4, "BM-reOpenChannel: APN request started"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->isParamsValid:Z

    .line 251
    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    .line 252
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cat/bip/BipManager;->sendBipConnTimeOutMsg(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto :goto_1

    .line 254
    :cond_5
    const-string v3, "[BIP]"

    const-string v4, "BM-reOpenChannel: startUsingNetworkFeature FAIL"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const/4 v2, 0x2

    .line 256
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iput-boolean v7, v3, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->isActivated:Z

    .line 257
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v5, v5, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->releaseChannelId(II)V

    .line 258
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 259
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 260
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method public receiveData(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 540
    const-string v1, "[BIP]"

    const-string v2, "new receiveData"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v1, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->getCmdMessage()Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    .line 542
    .local v0, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cat/bip/BipManager;->receiveData(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    .line 543
    return-void
.end method

.method public receiveData(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 9
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x5

    .line 507
    iget v2, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelDataLength:I

    .line 508
    .local v2, "requestCount":I
    new-instance v3, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;

    invoke-direct {v3}, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;-><init>()V

    .line 509
    .local v3, "result":Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;
    const/4 v7, 0x0

    .line 510
    .local v7, "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    iget v6, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mReceiveDataCid:I

    .line 512
    .local v6, "cId":I
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;

    move-result-object v7

    .line 513
    const-string v0, "[BIP]"

    const-string v1, "BM-receiveData: receiveData enter"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    if-nez v7, :cond_0

    .line 516
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lChannel is null cid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    iput v5, p2, Landroid/os/Message;->arg1:I

    .line 518
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 519
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 537
    :goto_0
    return-void

    .line 522
    :cond_0
    iget v0, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 524
    :cond_1
    const/16 v0, 0xed

    if-le v2, v0, :cond_2

    .line 525
    const-string v0, "[BIP]"

    const-string v1, "BM-receiveData: Modify channel data length to MAX_APDU_SIZE"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const/16 v2, 0xed

    .line 528
    :cond_2
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/android/internal/telephony/cat/bip/BipManager$RecvDataRunnable;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/bip/BipManager$RecvDataRunnable;-><init>(Lcom/android/internal/telephony/cat/bip/BipManager;ILcom/android/internal/telephony/cat/bip/ReceiveDataResult;Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 529
    .local v8, "recvThread":Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 532
    .end local v8    # "recvThread":Ljava/lang/Thread;
    :cond_3
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BM-receiveData: Channel status is invalid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iput v5, p2, Landroid/os/Message;->arg1:I

    .line 534
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 535
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public sendData(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 608
    const-string v1, "[BIP]"

    const-string v2, "new sendData: Enter"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v1, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->getCmdMessage()Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    .line 610
    .local v0, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cat/bip/BipManager;->sendData(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    .line 611
    return-void
.end method

.method public sendData(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 3
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 547
    const-string v1, "[BIP]"

    const-string v2, "sendData: Enter"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/cat/bip/BipManager$SendDataThread;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/cat/bip/BipManager$SendDataThread;-><init>(Lcom/android/internal/telephony/cat/bip/BipManager;Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 603
    .local v0, "rt":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 604
    const-string v1, "[BIP]"

    const-string v2, "sendData: Leave"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    return-void
.end method

.method public setConnMgrTimeoutFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1114
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->isConnMgrIntentTimeout:Z

    .line 1115
    return-void
.end method

.method public setOpenInProgressFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1117
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    .line 1118
    return-void
.end method
