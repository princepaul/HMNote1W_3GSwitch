.class Lcom/android/phone/settings/EnableFdnScreen$1;
.super Landroid/os/Handler;
.source "EnableFdnScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/EnableFdnScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/EnableFdnScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/EnableFdnScreen;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/phone/settings/EnableFdnScreen$1;->this$0:Lcom/android/phone/settings/EnableFdnScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 54
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 61
    :goto_0
    return-void

    .line 56
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 57
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/phone/settings/EnableFdnScreen$1;->this$0:Lcom/android/phone/settings/EnableFdnScreen;

    # invokes: Lcom/android/phone/settings/EnableFdnScreen;->handleResult(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/phone/settings/EnableFdnScreen;->access$000(Lcom/android/phone/settings/EnableFdnScreen;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
