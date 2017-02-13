.class Lcom/android/phone/PhoneApp$Delegate;
.super Lmiui/external/ApplicationDelegate;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Delegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/phone/PhoneApp$Delegate;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Lmiui/external/ApplicationDelegate;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/PhoneApp;
    .param p2, "x1"    # Lcom/android/phone/PhoneApp$1;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp$Delegate;-><init>(Lcom/android/phone/PhoneApp;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/phone/PhoneApp$Delegate;->this$0:Lcom/android/phone/PhoneApp;

    new-instance v1, Lcom/android/phone/PhoneGlobals;

    invoke-direct {v1, p0}, Lcom/android/phone/PhoneGlobals;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/phone/PhoneApp;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    .line 54
    iget-object v0, p0, Lcom/android/phone/PhoneApp$Delegate;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->onCreate()V

    .line 56
    iget-object v0, p0, Lcom/android/phone/PhoneApp$Delegate;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/utils/MiStatInterfaceUtil;->init(Landroid/content/Context;)V

    .line 57
    iget-object v0, p0, Lcom/android/phone/PhoneApp$Delegate;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/utils/MiStatInterfaceUtil;->recordSettingsEvent(Landroid/content/Context;)V

    .line 58
    iget-object v0, p0, Lcom/android/phone/PhoneApp$Delegate;->this$0:Lcom/android/phone/PhoneApp;

    new-instance v1, Lcom/android/phone/utils/DcStatMonitor;

    invoke-direct {v1}, Lcom/android/phone/utils/DcStatMonitor;-><init>()V

    # setter for: Lcom/android/phone/PhoneApp;->mDcStatMonitor:Lcom/android/phone/utils/DcStatMonitor;
    invoke-static {v0, v1}, Lcom/android/phone/PhoneApp;->access$102(Lcom/android/phone/PhoneApp;Lcom/android/phone/utils/DcStatMonitor;)Lcom/android/phone/utils/DcStatMonitor;

    .line 61
    :cond_0
    return-void
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Lmiui/external/ApplicationDelegate;->onTerminate()V

    .line 67
    const-string v0, "PhoneApp"

    const-string v1, "onTerminate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {}, Lcom/mediatek/phone/HyphonManager;->getInstance()Lcom/mediatek/phone/HyphonManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/HyphonManager;->onDestroy()V

    .line 69
    return-void
.end method
