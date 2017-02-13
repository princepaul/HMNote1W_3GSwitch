.class public Lcom/android/phone/settings/CustomLocationActivity$CustomLocationAdapter;
.super Landroid/widget/CursorAdapter;
.source "CustomLocationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/CustomLocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomLocationAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/CustomLocationActivity;


# direct methods
.method public constructor <init>(Lcom/android/phone/settings/CustomLocationActivity;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/phone/settings/CustomLocationActivity$CustomLocationAdapter;->this$0:Lcom/android/phone/settings/CustomLocationActivity;

    .line 77
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 78
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/settings/CustomLocationActivity$ItemView;

    .line 90
    .local v0, "item":Lcom/android/phone/settings/CustomLocationActivity$ItemView;
    iget-object v2, v0, Lcom/android/phone/settings/CustomLocationActivity$ItemView;->location:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v2, v0, Lcom/android/phone/settings/CustomLocationActivity$ItemView;->number:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const/4 v2, 0x3

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 93
    .local v1, "type":I
    packed-switch v1, :pswitch_data_0

    .line 106
    :goto_0
    return-void

    .line 95
    :pswitch_0
    iget-object v2, v0, Lcom/android/phone/settings/CustomLocationActivity$ItemView;->type:Landroid/widget/TextView;

    const v3, 0x7f0b03f2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 98
    :pswitch_1
    iget-object v2, v0, Lcom/android/phone/settings/CustomLocationActivity$ItemView;->type:Landroid/widget/TextView;

    const v3, 0x7f0b03f1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 101
    :pswitch_2
    iget-object v2, v0, Lcom/android/phone/settings/CustomLocationActivity$ItemView;->type:Landroid/widget/TextView;

    const v3, 0x7f0b03f0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 82
    iget-object v1, p0, Lcom/android/phone/settings/CustomLocationActivity$CustomLocationAdapter;->this$0:Lcom/android/phone/settings/CustomLocationActivity;

    # getter for: Lcom/android/phone/settings/CustomLocationActivity;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/android/phone/settings/CustomLocationActivity;->access$000(Lcom/android/phone/settings/CustomLocationActivity;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04000f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/android/phone/settings/CustomLocationActivity$ItemView;

    invoke-direct {v1, v0}, Lcom/android/phone/settings/CustomLocationActivity$ItemView;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    return-object v0
.end method
