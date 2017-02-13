.class Lcom/android/phone/ExportContactsToSim$1;
.super Ljava/lang/Object;
.source "ExportContactsToSim.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ExportContactsToSim;->doExportToSim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ExportContactsToSim;


# direct methods
.method constructor <init>(Lcom/android/phone/ExportContactsToSim;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/phone/ExportContactsToSim$1;->this$0:Lcom/android/phone/ExportContactsToSim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lcom/android/phone/ExportContactsToSim$1;->this$0:Lcom/android/phone/ExportContactsToSim;

    # invokes: Lcom/android/phone/ExportContactsToSim;->getContactsContentCursor()Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/phone/ExportContactsToSim;->access$000(Lcom/android/phone/ExportContactsToSim;)Landroid/database/Cursor;

    move-result-object v6

    .line 99
    .local v6, "contactsCursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v11, :cond_1

    .line 101
    iget-object v0, p0, Lcom/android/phone/ExportContactsToSim$1;->this$0:Lcom/android/phone/ExportContactsToSim;

    const/4 v1, 0x2

    # setter for: Lcom/android/phone/ExportContactsToSim;->mResult:I
    invoke-static {v0, v1}, Lcom/android/phone/ExportContactsToSim;->access$102(Lcom/android/phone/ExportContactsToSim;I)I

    .line 116
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 117
    iget-object v0, p0, Lcom/android/phone/ExportContactsToSim$1;->this$0:Lcom/android/phone/ExportContactsToSim;

    # getter for: Lcom/android/phone/ExportContactsToSim;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/ExportContactsToSim;->access$700(Lcom/android/phone/ExportContactsToSim;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/ExportContactsToSim$1;->this$0:Lcom/android/phone/ExportContactsToSim;

    # getter for: Lcom/android/phone/ExportContactsToSim;->mResult:I
    invoke-static {v1}, Lcom/android/phone/ExportContactsToSim;->access$100(Lcom/android/phone/ExportContactsToSim;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v11, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 118
    .local v10, "message":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/ExportContactsToSim$1;->this$0:Lcom/android/phone/ExportContactsToSim;

    # getter for: Lcom/android/phone/ExportContactsToSim;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/ExportContactsToSim;->access$700(Lcom/android/phone/ExportContactsToSim;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 119
    return-void

    .line 104
    .end local v10    # "message":Landroid/os/Message;
    :cond_1
    iget-object v0, p0, Lcom/android/phone/ExportContactsToSim$1;->this$0:Lcom/android/phone/ExportContactsToSim;

    # getter for: Lcom/android/phone/ExportContactsToSim;->mSimContactsLoaded:Z
    invoke-static {v0}, Lcom/android/phone/ExportContactsToSim;->access$200(Lcom/android/phone/ExportContactsToSim;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/android/phone/ExportContactsToSim$1;->this$0:Lcom/android/phone/ExportContactsToSim;

    invoke-virtual {v0}, Lcom/android/phone/ExportContactsToSim;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/ExportContactsToSim$1;->this$0:Lcom/android/phone/ExportContactsToSim;

    # invokes: Lcom/android/phone/ExportContactsToSim;->getUri()Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/phone/ExportContactsToSim;->access$300(Lcom/android/phone/ExportContactsToSim;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 106
    iget-object v0, p0, Lcom/android/phone/ExportContactsToSim$1;->this$0:Lcom/android/phone/ExportContactsToSim;

    # setter for: Lcom/android/phone/ExportContactsToSim;->mSimContactsLoaded:Z
    invoke-static {v0, v11}, Lcom/android/phone/ExportContactsToSim;->access$202(Lcom/android/phone/ExportContactsToSim;Z)Z

    .line 109
    :cond_2
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/phone/ExportContactsToSim$1;->this$0:Lcom/android/phone/ExportContactsToSim;

    # invokes: Lcom/android/phone/ExportContactsToSim;->getContactIdFromCursor(Landroid/database/Cursor;)Ljava/lang/String;
    invoke-static {v0, v6}, Lcom/android/phone/ExportContactsToSim;->access$400(Lcom/android/phone/ExportContactsToSim;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v9

    .line 111
    .local v9, "id":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/ExportContactsToSim$1;->this$0:Lcom/android/phone/ExportContactsToSim;

    # invokes: Lcom/android/phone/ExportContactsToSim;->getDataCursorRelatedToId(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v0, v9}, Lcom/android/phone/ExportContactsToSim;->access$500(Lcom/android/phone/ExportContactsToSim;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 112
    .local v7, "dataCursor":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/phone/ExportContactsToSim$1;->this$0:Lcom/android/phone/ExportContactsToSim;

    # invokes: Lcom/android/phone/ExportContactsToSim;->populateContactDataFromCursor(Landroid/database/Cursor;)V
    invoke-static {v0, v7}, Lcom/android/phone/ExportContactsToSim;->access$600(Lcom/android/phone/ExportContactsToSim;Landroid/database/Cursor;)V

    .line 113
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 109
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method
