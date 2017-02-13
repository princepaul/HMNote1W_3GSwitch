.class public Lcom/android/phone/BluetoothManager;
.super Ljava/lang/Object;
.source "BluetoothManager.java"

# interfaces
.implements Lcom/android/phone/CallModeler$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BluetoothManager$2;,
        Lcom/android/phone/BluetoothManager$BluetoothIndicatorListener;,
        Lcom/android/phone/BluetoothManager$BluetoothBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final VDBG:Z = true


# instance fields
.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothConnectionPending:Z

.field private mBluetoothConnectionRequestTime:J

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetAudioState:I

.field private mBluetoothHeadsetState:I

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mCallManager:Lcom/android/internal/telephony/CallManager;

.field private final mCallModeler:Lcom/android/phone/CallModeler;

.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/BluetoothManager$BluetoothIndicatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mShowBluetoothIndication:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 47
    const-class v2, Lcom/android/phone/BluetoothManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/phone/BluetoothManager;->LOG_TAG:Ljava/lang/String;

    .line 48
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/BluetoothManager;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;Lcom/android/phone/CallModeler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callManager"    # Lcom/android/internal/telephony/CallManager;
    .param p3, "callModeler"    # Lcom/android/phone/CallModeler;

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput v1, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadsetState:I

    .line 64
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadsetAudioState:I

    .line 65
    iput-boolean v1, p0, Lcom/android/phone/BluetoothManager;->mShowBluetoothIndication:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/phone/BluetoothManager;->mBluetoothConnectionPending:Z

    .line 70
    new-instance v0, Lcom/android/phone/BluetoothManager$BluetoothBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/BluetoothManager$BluetoothBroadcastReceiver;-><init>(Lcom/android/phone/BluetoothManager;Lcom/android/phone/BluetoothManager$1;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BluetoothManager;->mListeners:Ljava/util/List;

    .line 272
    new-instance v0, Lcom/android/phone/BluetoothManager$1;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothManager$1;-><init>(Lcom/android/phone/BluetoothManager;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 75
    iput-object p1, p0, Lcom/android/phone/BluetoothManager;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/android/phone/BluetoothManager;->mCallManager:Lcom/android/internal/telephony/CallManager;

    .line 77
    iput-object p3, p0, Lcom/android/phone/BluetoothManager;->mCallModeler:Lcom/android/phone/CallModeler;

    .line 78
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 80
    iget-object v0, p0, Lcom/android/phone/BluetoothManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothManager;->init(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/BluetoothManager;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/BluetoothManager;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothManager;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/BluetoothManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/BluetoothManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothManager;

    .prologue
    .line 46
    iget v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadsetState:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/BluetoothManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothManager;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadsetState:I

    return p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/phone/BluetoothManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/BluetoothManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothManager;

    .prologue
    .line 46
    iget v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadsetAudioState:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/phone/BluetoothManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothManager;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadsetAudioState:I

    return p1
.end method

.method private dumpBluetoothState()V
    .locals 4

    .prologue
    .line 331
    const-string v2, "============== dumpBluetoothState() ============="

    invoke-direct {p0, v2}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= isBluetoothAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/BluetoothManager;->isBluetoothAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= isBluetoothAudioConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/BluetoothManager;->isBluetoothAudioConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= isBluetoothAudioConnectedOrPending: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/BluetoothManager;->isBluetoothAudioConnectedOrPending()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= PhoneApp.showBluetoothIndication: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/BluetoothManager;->showBluetoothIndication()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    .line 337
    const-string v2, "="

    invoke-direct {p0, v2}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    .line 338
    iget-object v2, p0, Lcom/android/phone/BluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_2

    .line 339
    iget-object v2, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_1

    .line 340
    iget-object v2, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 342
    .local v1, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 343
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 344
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= BluetoothHeadset.getCurrentDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= BluetoothHeadset.State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= BluetoothHeadset audio connected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    .line 356
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    const-string v2, "= mBluetoothHeadset is null"

    invoke-direct {p0, v2}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 354
    :cond_2
    const-string v2, "= mBluetoothAdapter is null; device is not BT capable"

    invoke-direct {p0, v2}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 249
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v1, p0, Lcom/android/phone/BluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/android/phone/BluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/android/phone/BluetoothManager;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 257
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 259
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Lcom/android/phone/BluetoothManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 262
    iget-object v1, p0, Lcom/android/phone/BluetoothManager;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v1, p0}, Lcom/android/phone/CallModeler;->addListener(Lcom/android/phone/CallModeler$Listener;)V

    .line 263
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 431
    sget-object v0, Lcom/android/phone/BluetoothManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-void
.end method

.method private notifyListeners(Z)V
    .locals 2
    .param p1, "showBluetoothOn"    # Z

    .prologue
    .line 243
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/phone/BluetoothManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/android/phone/BluetoothManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/BluetoothManager$BluetoothIndicatorListener;

    invoke-interface {v1, p1, p0}, Lcom/android/phone/BluetoothManager$BluetoothIndicatorListener;->onBluetoothIndicationChange(ZLcom/android/phone/BluetoothManager;)V

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_0
    return-void
.end method

.method private static shouldShowBluetoothIndication(IILcom/android/internal/telephony/CallManager;)Z
    .locals 5
    .param p0, "bluetoothState"    # I
    .param p1, "bluetoothAudioState"    # I
    .param p2, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 308
    sget-object v2, Lcom/android/phone/BluetoothManager$2;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 326
    :cond_0
    :goto_0
    return v0

    .line 314
    :pswitch_0
    if-ne p0, v4, :cond_1

    const/16 v2, 0xc

    if-eq p1, v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 323
    :pswitch_1
    if-eq p0, v4, :cond_0

    move v0, v1

    goto :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private tearDown()V
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 270
    :cond_0
    return-void
.end method


# virtual methods
.method public addBluetoothIndicatorListener(Lcom/android/phone/BluetoothManager$BluetoothIndicatorListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/phone/BluetoothManager$BluetoothIndicatorListener;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/phone/BluetoothManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/phone/BluetoothManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_0
    return-void
.end method

.method connectBluetoothAudio()V
    .locals 2

    .prologue
    .line 359
    const-string v0, "connectBluetoothAudio()..."

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->connectAudio()Z

    .line 370
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothConnectionPending:Z

    .line 371
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothConnectionRequestTime:J

    .line 372
    return-void
.end method

.method disconnectBluetoothAudio()V
    .locals 1

    .prologue
    .line 375
    const-string v0, "disconnectBluetoothAudio()..."

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    .line 379
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothConnectionPending:Z

    .line 380
    return-void
.end method

.method isBluetoothAudioConnected()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 147
    iget-object v3, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v3, :cond_1

    .line 148
    const-string v3, "isBluetoothAudioConnected: ==> FALSE (null mBluetoothHeadset)"

    invoke-direct {p0, v3}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    .line 159
    :cond_0
    :goto_0
    return v2

    .line 151
    :cond_1
    iget-object v3, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 153
    .local v1, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 156
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 157
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 158
    .local v2, "isAudioOn":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBluetoothAudioConnected: ==> isAudioOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method isBluetoothAudioConnectedOrPending()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 173
    invoke-virtual {p0}, Lcom/android/phone/BluetoothManager;->isBluetoothAudioConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 174
    const-string v3, "isBluetoothAudioConnectedOrPending: ==> TRUE (really connected)"

    invoke-direct {p0, v3}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    .line 197
    :goto_0
    return v2

    .line 181
    :cond_0
    iget-boolean v4, p0, Lcom/android/phone/BluetoothManager;->mBluetoothConnectionPending:Z

    if-eqz v4, :cond_2

    .line 182
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/phone/BluetoothManager;->mBluetoothConnectionRequestTime:J

    sub-long v0, v4, v6

    .line 184
    .local v0, "timeSinceRequest":J
    const-wide/16 v4, 0x1388

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBluetoothAudioConnectedOrPending: ==> TRUE (requested "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msec ago)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBluetoothAudioConnectedOrPending: ==> FALSE (request too old: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " msec ago)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    .line 191
    iput-boolean v3, p0, Lcom/android/phone/BluetoothManager;->mBluetoothConnectionPending:Z

    move v2, v3

    .line 192
    goto :goto_0

    .line 196
    .end local v0    # "timeSinceRequest":J
    :cond_2
    const-string v2, "isBluetoothAudioConnectedOrPending: ==> FALSE"

    invoke-direct {p0, v2}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    move v2, v3

    .line 197
    goto :goto_0
.end method

.method isBluetoothAvailable()Z
    .locals 5

    .prologue
    .line 107
    const-string v3, "isBluetoothAvailable()..."

    invoke-direct {p0, v3}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    .line 124
    const/4 v2, 0x0

    .line 125
    .local v2, "isConnected":Z
    iget-object v3, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_0

    .line 126
    iget-object v3, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 128
    .local v1, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 129
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 130
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    const/4 v2, 0x1

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - headset state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - headset address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - isConnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    .line 139
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  ==> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    .line 140
    return v2
.end method

.method isBluetoothHeadsetAudioOn()Z
    .locals 2

    .prologue
    .line 84
    iget v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadsetAudioState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCrssSuppServiceNumberUpdate(ILjava/lang/String;)V
    .locals 0
    .param p1, "callId"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 452
    return-void
.end method

.method public onDisconnect(Lcom/android/services/telephony/common/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/android/phone/BluetoothManager;->updateBluetoothIndication()V

    .line 411
    return-void
.end method

.method public onIncoming(Lcom/android/services/telephony/common/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/android/phone/BluetoothManager;->updateBluetoothIndication()V

    .line 418
    return-void
.end method

.method public onPostDialAction(Lcom/android/internal/telephony/Connection$PostDialState;ILjava/lang/String;C)V
    .locals 0
    .param p1, "state"    # Lcom/android/internal/telephony/Connection$PostDialState;
    .param p2, "callId"    # I
    .param p3, "chars"    # Ljava/lang/String;
    .param p4, "c"    # C

    .prologue
    .line 428
    return-void
.end method

.method public onSuppServiceFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 441
    return-void
.end method

.method public onUpdate(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/common/Call;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 422
    .local p1, "calls":Ljava/util/List;, "Ljava/util/List<Lcom/android/services/telephony/common/Call;>;"
    invoke-virtual {p0}, Lcom/android/phone/BluetoothManager;->updateBluetoothIndication()V

    .line 423
    return-void
.end method

.method public removeBluetoothIndicatorListener(Lcom/android/phone/BluetoothManager$BluetoothIndicatorListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/phone/BluetoothManager$BluetoothIndicatorListener;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/phone/BluetoothManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/phone/BluetoothManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 240
    :cond_0
    return-void
.end method

.method showBluetoothIndication()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/android/phone/BluetoothManager;->mShowBluetoothIndication:Z

    return v0
.end method

.method updateBluetoothIndication()V
    .locals 3

    .prologue
    .line 223
    iget v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadsetState:I

    iget v1, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadsetAudioState:I

    iget-object v2, p0, Lcom/android/phone/BluetoothManager;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, v1, v2}, Lcom/android/phone/BluetoothManager;->shouldShowBluetoothIndication(IILcom/android/internal/telephony/CallManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothManager;->mShowBluetoothIndication:Z

    .line 227
    iget-boolean v0, p0, Lcom/android/phone/BluetoothManager;->mShowBluetoothIndication:Z

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothManager;->notifyListeners(Z)V

    .line 228
    return-void
.end method

.method public updateDualtalkCallStatus(Lcom/android/services/telephony/common/DualtalkCallInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/android/services/telephony/common/DualtalkCallInfo;

    .prologue
    .line 446
    return-void
.end method
