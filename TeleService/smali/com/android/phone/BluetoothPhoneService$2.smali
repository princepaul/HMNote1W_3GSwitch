.class Lcom/android/phone/BluetoothPhoneService$2;
.super Ljava/lang/Object;
.source "BluetoothPhoneService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothPhoneService;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 0

    .prologue
    .line 1699
    iput-object p1, p0, Lcom/android/phone/BluetoothPhoneService$2;->this$0:Lcom/android/phone/BluetoothPhoneService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 1701
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$2;->this$0:Lcom/android/phone/BluetoothPhoneService;

    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothHeadset;

    # setter for: Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1, v0}, Lcom/android/phone/BluetoothPhoneService;->access$2102(Lcom/android/phone/BluetoothPhoneService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 1702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected, mBluetoothHeadset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$900(Ljava/lang/String;)V

    .line 1703
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$2;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothPhoneService;->access$2102(Lcom/android/phone/BluetoothPhoneService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 1706
    const-string v0, "onServiceDisconnected, mBluetoothHeadset = null"

    # invokes: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$900(Ljava/lang/String;)V

    .line 1707
    return-void
.end method
