.class Lcom/mediatek/settings/NetworkEditor$NetworkInfo;
.super Ljava/lang/Object;
.source "NetworkEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/NetworkEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkInfo"
.end annotation


# instance fields
.field private mNetWorkMode:Ljava/lang/String;

.field private mNetworkId:Ljava/lang/String;

.field private mPriority:I

.field final synthetic this$0:Lcom/mediatek/settings/NetworkEditor;


# direct methods
.method public constructor <init>(Lcom/mediatek/settings/NetworkEditor;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 551
    iput-object p1, p0, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->this$0:Lcom/mediatek/settings/NetworkEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    iput-object v1, p0, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->mNetworkId:Ljava/lang/String;

    .line 553
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->mPriority:I

    .line 554
    iput-object v1, p0, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->mNetWorkMode:Ljava/lang/String;

    .line 555
    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/settings/NetworkEditor$NetworkInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    .prologue
    .line 546
    iget v0, p0, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->mPriority:I

    return v0
.end method


# virtual methods
.method public getNetWorkMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->mNetWorkMode:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->mNetworkId:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 566
    iget v0, p0, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->mPriority:I

    return v0
.end method

.method public setNetWorkMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNetWorkMode"    # Ljava/lang/String;

    .prologue
    .line 578
    iput-object p1, p0, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->mNetWorkMode:Ljava/lang/String;

    .line 579
    return-void
.end method

.method public setNetworkId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNetworkId"    # Ljava/lang/String;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->mNetworkId:Ljava/lang/String;

    .line 563
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "mPriority"    # I

    .prologue
    .line 570
    iput p1, p0, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->mPriority:I

    .line 571
    return-void
.end method
