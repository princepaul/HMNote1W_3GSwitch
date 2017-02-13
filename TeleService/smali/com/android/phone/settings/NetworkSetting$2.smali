.class Lcom/android/phone/settings/NetworkSetting$2;
.super Ljava/lang/Object;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/NetworkSetting;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/phone/settings/NetworkSetting$2;->this$0:Lcom/android/phone/settings/NetworkSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/phone/settings/NetworkSetting$2;->this$0:Lcom/android/phone/settings/NetworkSetting;

    check-cast p2, Lcom/android/phone/NetworkQueryService$LocalBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/android/phone/NetworkQueryService$LocalBinder;->getService()Lcom/android/phone/INetworkQueryService;

    move-result-object v1

    # setter for: Lcom/android/phone/settings/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;
    invoke-static {v0, v1}, Lcom/android/phone/settings/NetworkSetting;->access$902(Lcom/android/phone/settings/NetworkSetting;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;

    .line 222
    iget-object v0, p0, Lcom/android/phone/settings/NetworkSetting$2;->this$0:Lcom/android/phone/settings/NetworkSetting;

    invoke-virtual {v0}, Lcom/android/phone/settings/NetworkSetting;->onNetworkQueryServiceConnected()V

    .line 223
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/phone/settings/NetworkSetting$2;->this$0:Lcom/android/phone/settings/NetworkSetting;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/settings/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;
    invoke-static {v0, v1}, Lcom/android/phone/settings/NetworkSetting;->access$902(Lcom/android/phone/settings/NetworkSetting;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;

    .line 229
    return-void
.end method
