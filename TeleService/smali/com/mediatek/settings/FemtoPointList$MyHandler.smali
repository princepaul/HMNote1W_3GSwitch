.class Lcom/mediatek/settings/FemtoPointList$MyHandler;
.super Landroid/os/Handler;
.source "FemtoPointList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/FemtoPointList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MESSAGE_ABORT_FEMTO_CELL_LIST:I = 0x3

.field private static final MESSAGE_GET_FEMTO_CELL_LIST:I = 0x1

.field private static final MESSAGE_SELECT_FEMTO_CELL:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/FemtoPointList;


# direct methods
.method private constructor <init>(Lcom/mediatek/settings/FemtoPointList;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/mediatek/settings/FemtoPointList$MyHandler;->this$0:Lcom/mediatek/settings/FemtoPointList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/settings/FemtoPointList;Lcom/mediatek/settings/FemtoPointList$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/settings/FemtoPointList;
    .param p2, "x1"    # Lcom/mediatek/settings/FemtoPointList$1;

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/mediatek/settings/FemtoPointList$MyHandler;-><init>(Lcom/mediatek/settings/FemtoPointList;)V

    return-void
.end method

.method private handleAbortFemtoCellListResponse(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/mediatek/settings/FemtoPointList$MyHandler;->this$0:Lcom/mediatek/settings/FemtoPointList;

    const-string v1, "handleAbortFemtoCellListResponse "

    # invokes: Lcom/mediatek/settings/FemtoPointList;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/settings/FemtoPointList;->access$100(Lcom/mediatek/settings/FemtoPointList;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method private handleGetFemtoCellListResponse(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 191
    iget-object v1, p0, Lcom/mediatek/settings/FemtoPointList$MyHandler;->this$0:Lcom/mediatek/settings/FemtoPointList;

    const-string v2, "Handle getFemtoCellList done."

    # invokes: Lcom/mediatek/settings/FemtoPointList;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/FemtoPointList;->access$100(Lcom/mediatek/settings/FemtoPointList;Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/mediatek/settings/FemtoPointList$MyHandler;->this$0:Lcom/mediatek/settings/FemtoPointList;

    const/4 v2, 0x0

    # setter for: Lcom/mediatek/settings/FemtoPointList;->mIsDoingAction:Z
    invoke-static {v1, v2}, Lcom/mediatek/settings/FemtoPointList;->access$1302(Lcom/mediatek/settings/FemtoPointList;Z)Z

    .line 193
    iget-object v1, p0, Lcom/mediatek/settings/FemtoPointList$MyHandler;->this$0:Lcom/mediatek/settings/FemtoPointList;

    # invokes: Lcom/mediatek/settings/FemtoPointList;->hideFemtoPointListLoadProgressDialog()V
    invoke-static {v1}, Lcom/mediatek/settings/FemtoPointList;->access$1400(Lcom/mediatek/settings/FemtoPointList;)V

    .line 194
    iget-object v1, p0, Lcom/mediatek/settings/FemtoPointList$MyHandler;->this$0:Lcom/mediatek/settings/FemtoPointList;

    const/4 v2, 0x1

    # invokes: Lcom/mediatek/settings/FemtoPointList;->setScreenEnabled(Z)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/FemtoPointList;->access$200(Lcom/mediatek/settings/FemtoPointList;Z)V

    .line 195
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 196
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 197
    iget-object v1, p0, Lcom/mediatek/settings/FemtoPointList$MyHandler;->this$0:Lcom/mediatek/settings/FemtoPointList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGetPLMNResponse with exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/settings/FemtoPointList;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/FemtoPointList;->access$100(Lcom/mediatek/settings/FemtoPointList;Ljava/lang/String;)V

    .line 198
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_CANCELLED:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v1, v2, :cond_1

    .line 200
    iget-object v1, p0, Lcom/mediatek/settings/FemtoPointList$MyHandler;->this$0:Lcom/mediatek/settings/FemtoPointList;

    # invokes: Lcom/mediatek/settings/FemtoPointList;->showScanFailTips()V
    invoke-static {v1}, Lcom/mediatek/settings/FemtoPointList;->access$1500(Lcom/mediatek/settings/FemtoPointList;)V

    .line 201
    iget-object v1, p0, Lcom/mediatek/settings/FemtoPointList$MyHandler;->this$0:Lcom/mediatek/settings/FemtoPointList;

    # getter for: Lcom/mediatek/settings/FemtoPointList;->mFemtoList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/settings/FemtoPointList;->access$1600(Lcom/mediatek/settings/FemtoPointList;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/mediatek/settings/FemtoPointList$MyHandler;->this$0:Lcom/mediatek/settings/FemtoPointList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/mediatek/settings/FemtoPointList;->mFemtoList:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/mediatek/settings/FemtoPointList;->access$1602(Lcom/mediatek/settings/FemtoPointList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/FemtoPointList$MyHandler;->this$0:Lcom/mediatek/settings/FemtoPointList;

    const-string v2, "handleGetFemtoCellListResponse else case..."

    # invokes: Lcom/mediatek/settings/FemtoPointList;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/FemtoPointList;->access$100(Lcom/mediatek/settings/FemtoPointList;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_2
    iget-object v2, p0, Lcom/mediatek/settings/FemtoPointList$MyHandler;->this$0:Lcom/mediatek/settings/FemtoPointList;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    # invokes: Lcom/mediatek/settings/FemtoPointList;->refreshPreference(Ljava/util/ArrayList;)V
    invoke-static {v2, v1}, Lcom/mediatek/settings/FemtoPointList;->access$1700(Lcom/mediatek/settings/FemtoPointList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private handleSelectFemtoCellResponse(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 213
    iget-object v1, p0, Lcom/mediatek/settings/FemtoPointList$MyHandler;->this$0:Lcom/mediatek/settings/FemtoPointList;

    const-string v2, "Handle selectFemtoCell done."

    # invokes: Lcom/mediatek/settings/FemtoPointList;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/FemtoPointList;->access$100(Lcom/mediatek/settings/FemtoPointList;Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/mediatek/settings/FemtoPointList$MyHandler;->this$0:Lcom/mediatek/settings/FemtoPointList;

    const/4 v2, 0x0

    # setter for: Lcom/mediatek/settings/FemtoPointList;->mIsDoingAction:Z
    invoke-static {v1, v2}, Lcom/mediatek/settings/FemtoPointList;->access$1302(Lcom/mediatek/settings/FemtoPointList;Z)Z

    .line 215
    iget-object v1, p0, Lcom/mediatek/settings/FemtoPointList$MyHandler;->this$0:Lcom/mediatek/settings/FemtoPointList;

    # invokes: Lcom/mediatek/settings/FemtoPointList;->hideFemtoCellSeletionProgressDialog()V
    invoke-static {v1}, Lcom/mediatek/settings/FemtoPointList;->access$1800(Lcom/mediatek/settings/FemtoPointList;)V

    .line 216
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 217
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/mediatek/settings/FemtoPointList$MyHandler;->this$0:Lcom/mediatek/settings/FemtoPointList;

    # invokes: Lcom/mediatek/settings/FemtoPointList;->showSelectFailTips()V
    invoke-static {v1}, Lcom/mediatek/settings/FemtoPointList;->access$1900(Lcom/mediatek/settings/FemtoPointList;)V

    .line 219
    iget-object v1, p0, Lcom/mediatek/settings/FemtoPointList$MyHandler;->this$0:Lcom/mediatek/settings/FemtoPointList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSelectFemtoCellResponse with exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/settings/FemtoPointList;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/FemtoPointList;->access$100(Lcom/mediatek/settings/FemtoPointList;Ljava/lang/String;)V

    .line 224
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/FemtoPointList$MyHandler;->this$0:Lcom/mediatek/settings/FemtoPointList;

    const-string v2, "handleSelectFemtoCellResponse with OK result!"

    # invokes: Lcom/mediatek/settings/FemtoPointList;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/FemtoPointList;->access$100(Lcom/mediatek/settings/FemtoPointList;Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/mediatek/settings/FemtoPointList$MyHandler;->this$0:Lcom/mediatek/settings/FemtoPointList;

    invoke-virtual {v1}, Lcom/mediatek/settings/FemtoPointList;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mediatek/settings/FemtoPointList$MyHandler;->this$0:Lcom/mediatek/settings/FemtoPointList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle message msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/settings/FemtoPointList;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/settings/FemtoPointList;->access$100(Lcom/mediatek/settings/FemtoPointList;Ljava/lang/String;)V

    .line 174
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 185
    iget-object v0, p0, Lcom/mediatek/settings/FemtoPointList$MyHandler;->this$0:Lcom/mediatek/settings/FemtoPointList;

    const-string v1, "Handle message default"

    # invokes: Lcom/mediatek/settings/FemtoPointList;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/settings/FemtoPointList;->access$100(Lcom/mediatek/settings/FemtoPointList;Ljava/lang/String;)V

    .line 188
    :goto_0
    return-void

    .line 176
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/mediatek/settings/FemtoPointList$MyHandler;->handleGetFemtoCellListResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 179
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/mediatek/settings/FemtoPointList$MyHandler;->handleSelectFemtoCellResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 182
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/mediatek/settings/FemtoPointList$MyHandler;->handleAbortFemtoCellListResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
