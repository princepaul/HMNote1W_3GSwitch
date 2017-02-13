.class public Lmiui/telephony/MiuiTelephony;
.super Lmiui/telephony/MiuiTelephonyBase;
.source "MiuiTelephony.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field private static sInstance:Lmiui/telephony/MiuiTelephony;


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "MiuiTelephony"

    sput-object v0, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Lmiui/telephony/MiuiTelephonyBase;-><init>()V

    .line 37
    iput-object p1, p0, Lmiui/telephony/MiuiTelephony;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public static getInstance()Lmiui/telephony/MiuiTelephony;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lmiui/telephony/MiuiTelephony;->sInstance:Lmiui/telephony/MiuiTelephony;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    new-instance v1, Lmiui/telephony/MiuiTelephony;

    invoke-direct {v1, p0}, Lmiui/telephony/MiuiTelephony;-><init>(Landroid/content/Context;)V

    sput-object v1, Lmiui/telephony/MiuiTelephony;->sInstance:Lmiui/telephony/MiuiTelephony;

    .line 48
    :try_start_0
    const-string v1, "telephony.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    sget-object v2, Lmiui/telephony/MiuiTelephony;->sInstance:Lmiui/telephony/MiuiTelephony;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->setMiuiTelephony(Lmiui/telephony/IMiuiTelephony;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    const-string v2, "setMiuiTelephony error"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getImei(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 81
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getMeid(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSpn(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .param p3, "spn"    # Ljava/lang/String;
    .param p4, "longName"    # Z

    .prologue
    .line 100
    invoke-static {p1, p2, p3, p4}, Lmiui/telephony/ServiceProviderUtils;->get(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemDefaultSlotId()I
    .locals 1

    .prologue
    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isIccCardActivate(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 72
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "otherNumeric"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {p1, p2}, Lmiui/telephony/ServiceProviderUtils;->isSameServiceProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onOperatorNumericOrNameSet(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-static {p1, p2, p3}, Lmiui/telephony/ServiceProviderUtils;->onOperatorNumericOrNameSet(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultDataSlotId(ILjava/lang/String;)Z
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setDefaultSlotSelector(Lmiui/telephony/DefaultSlotSelector;)V
    .locals 1
    .param p1, "selector"    # Lmiui/telephony/DefaultSlotSelector;

    .prologue
    .line 90
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setDefaultVoiceSlotId(ILjava/lang/String;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
