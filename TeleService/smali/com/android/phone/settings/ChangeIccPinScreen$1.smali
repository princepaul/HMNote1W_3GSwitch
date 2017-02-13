.class Lcom/android/phone/settings/ChangeIccPinScreen$1;
.super Landroid/os/Handler;
.source "ChangeIccPinScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/ChangeIccPinScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/ChangeIccPinScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/ChangeIccPinScreen;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/phone/settings/ChangeIccPinScreen$1;->this$0:Lcom/android/phone/settings/ChangeIccPinScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 82
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 84
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 85
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen$1;->this$0:Lcom/android/phone/settings/ChangeIccPinScreen;

    # invokes: Lcom/android/phone/settings/ChangeIccPinScreen;->handleResult(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/phone/settings/ChangeIccPinScreen;->access$000(Lcom/android/phone/settings/ChangeIccPinScreen;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
