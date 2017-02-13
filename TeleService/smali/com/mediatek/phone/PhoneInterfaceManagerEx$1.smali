.class Lcom/mediatek/phone/PhoneInterfaceManagerEx$1;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/phone/PhoneInterfaceManagerEx;->getScAddressGemini(I)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

.field final synthetic val$addr:Lcom/mediatek/phone/PhoneInterfaceManagerEx$ScAddrGemini;


# direct methods
.method constructor <init>(Lcom/mediatek/phone/PhoneInterfaceManagerEx;Lcom/mediatek/phone/PhoneInterfaceManagerEx$ScAddrGemini;)V
    .locals 0

    .prologue
    .line 1044
    iput-object p1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$1;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    iput-object p2, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$1;->val$addr:Lcom/mediatek/phone/PhoneInterfaceManagerEx$ScAddrGemini;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1047
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$1;->val$addr:Lcom/mediatek/phone/PhoneInterfaceManagerEx$ScAddrGemini;

    iget-object v1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$1;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    const/16 v3, 0xb

    iget-object v4, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$1;->val$addr:Lcom/mediatek/phone/PhoneInterfaceManagerEx$ScAddrGemini;

    # invokes: Lcom/mediatek/phone/PhoneInterfaceManagerEx;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;
    invoke-static {v1, v3, v4}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->access$900(Lcom/mediatek/phone/PhoneInterfaceManagerEx;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/mediatek/phone/PhoneInterfaceManagerEx$ScAddrGemini;->scAddr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1051
    :goto_0
    return-void

    .line 1048
    :catch_0
    move-exception v0

    .line 1049
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "PhoneInterfaceManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sca getScAddressGemini "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
