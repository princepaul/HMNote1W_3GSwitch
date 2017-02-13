.class public Lcom/android/phone/settings/DeleteFdnContactScreen$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "DeleteFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/DeleteFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/DeleteFdnContactScreen;


# direct methods
.method public constructor <init>(Lcom/android/phone/settings/DeleteFdnContactScreen;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/phone/settings/DeleteFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/settings/DeleteFdnContactScreen;

    .line 171
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 172
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    const/4 v0, 0x0

    .line 189
    iget-object v1, p0, Lcom/android/phone/settings/DeleteFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/settings/DeleteFdnContactScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/DeleteFdnContactScreen;->displayProgress(Z)V

    .line 190
    iget-object v1, p0, Lcom/android/phone/settings/DeleteFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/settings/DeleteFdnContactScreen;

    if-lez p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    # invokes: Lcom/android/phone/settings/DeleteFdnContactScreen;->handleResult(Z)V
    invoke-static {v1, v0}, Lcom/android/phone/settings/DeleteFdnContactScreen;->access$000(Lcom/android/phone/settings/DeleteFdnContactScreen;Z)V

    .line 191
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 180
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 176
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 184
    return-void
.end method
