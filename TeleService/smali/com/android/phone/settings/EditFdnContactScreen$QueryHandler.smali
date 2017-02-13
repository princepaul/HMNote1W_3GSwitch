.class Lcom/android/phone/settings/EditFdnContactScreen$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "EditFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/EditFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/EditFdnContactScreen;


# direct methods
.method public constructor <init>(Lcom/android/phone/settings/EditFdnContactScreen;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/phone/settings/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/settings/EditFdnContactScreen;

    .line 374
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 375
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    const/4 v1, 0x0

    .line 399
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/settings/EditFdnContactScreen;

    # invokes: Lcom/android/phone/settings/EditFdnContactScreen;->dismissProgress()V
    invoke-static {v0}, Lcom/android/phone/settings/EditFdnContactScreen;->access$700(Lcom/android/phone/settings/EditFdnContactScreen;)V

    .line 400
    iget-object v2, p0, Lcom/android/phone/settings/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/settings/EditFdnContactScreen;

    sget-object v3, Lcom/android/phone/settings/EditFdnContactScreen$Actions;->Delete:Lcom/android/phone/settings/EditFdnContactScreen$Actions;

    if-lez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/android/phone/settings/EditFdnContactScreen;->handleResult(Lcom/android/phone/settings/EditFdnContactScreen$Actions;ZZ)V
    invoke-static {v2, v3, v0, v1}, Lcom/android/phone/settings/EditFdnContactScreen;->access$800(Lcom/android/phone/settings/EditFdnContactScreen;Lcom/android/phone/settings/EditFdnContactScreen$Actions;ZZ)V

    .line 401
    return-void

    :cond_0
    move v0, v1

    .line 400
    goto :goto_0
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 385
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/settings/EditFdnContactScreen;

    # invokes: Lcom/android/phone/settings/EditFdnContactScreen;->dismissProgress()V
    invoke-static {v0}, Lcom/android/phone/settings/EditFdnContactScreen;->access$700(Lcom/android/phone/settings/EditFdnContactScreen;)V

    .line 386
    iget-object v2, p0, Lcom/android/phone/settings/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/settings/EditFdnContactScreen;

    sget-object v3, Lcom/android/phone/settings/EditFdnContactScreen$Actions;->Insert:Lcom/android/phone/settings/EditFdnContactScreen$Actions;

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/android/phone/settings/EditFdnContactScreen;->handleResult(Lcom/android/phone/settings/EditFdnContactScreen$Actions;ZZ)V
    invoke-static {v2, v3, v0, v1}, Lcom/android/phone/settings/EditFdnContactScreen;->access$800(Lcom/android/phone/settings/EditFdnContactScreen;Lcom/android/phone/settings/EditFdnContactScreen$Actions;ZZ)V

    .line 387
    return-void

    :cond_0
    move v0, v1

    .line 386
    goto :goto_0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 379
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    const/4 v1, 0x0

    .line 392
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/settings/EditFdnContactScreen;

    # invokes: Lcom/android/phone/settings/EditFdnContactScreen;->dismissProgress()V
    invoke-static {v0}, Lcom/android/phone/settings/EditFdnContactScreen;->access$700(Lcom/android/phone/settings/EditFdnContactScreen;)V

    .line 393
    iget-object v2, p0, Lcom/android/phone/settings/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/settings/EditFdnContactScreen;

    sget-object v3, Lcom/android/phone/settings/EditFdnContactScreen$Actions;->Update:Lcom/android/phone/settings/EditFdnContactScreen$Actions;

    if-lez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/android/phone/settings/EditFdnContactScreen;->handleResult(Lcom/android/phone/settings/EditFdnContactScreen$Actions;ZZ)V
    invoke-static {v2, v3, v0, v1}, Lcom/android/phone/settings/EditFdnContactScreen;->access$800(Lcom/android/phone/settings/EditFdnContactScreen;Lcom/android/phone/settings/EditFdnContactScreen$Actions;ZZ)V

    .line 394
    return-void

    :cond_0
    move v0, v1

    .line 393
    goto :goto_0
.end method
