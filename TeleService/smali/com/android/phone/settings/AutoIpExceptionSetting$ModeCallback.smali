.class Lcom/android/phone/settings/AutoIpExceptionSetting$ModeCallback;
.super Ljava/lang/Object;
.source "AutoIpExceptionSetting.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/AutoIpExceptionSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/AutoIpExceptionSetting;


# direct methods
.method private constructor <init>(Lcom/android/phone/settings/AutoIpExceptionSetting;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/phone/settings/AutoIpExceptionSetting$ModeCallback;->this$0:Lcom/android/phone/settings/AutoIpExceptionSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/settings/AutoIpExceptionSetting;Lcom/android/phone/settings/AutoIpExceptionSetting$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/settings/AutoIpExceptionSetting;
    .param p2, "x1"    # Lcom/android/phone/settings/AutoIpExceptionSetting$1;

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcom/android/phone/settings/AutoIpExceptionSetting$ModeCallback;-><init>(Lcom/android/phone/settings/AutoIpExceptionSetting;)V

    return-void
.end method

.method private delete(Landroid/view/ActionMode;)V
    .locals 8
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const v7, 0x7f0b03dc

    .line 306
    iget-object v1, p0, Lcom/android/phone/settings/AutoIpExceptionSetting$ModeCallback;->this$0:Lcom/android/phone/settings/AutoIpExceptionSetting;

    # getter for: Lcom/android/phone/settings/AutoIpExceptionSetting;->mList:Lmiui/widget/EditableListView;
    invoke-static {v1}, Lcom/android/phone/settings/AutoIpExceptionSetting;->access$100(Lcom/android/phone/settings/AutoIpExceptionSetting;)Lmiui/widget/EditableListView;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/widget/EditableListView;->getCheckedItemIds()[J

    move-result-object v0

    .line 307
    .local v0, "checkedIds":[J
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 308
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/settings/AutoIpExceptionSetting$ModeCallback;->this$0:Lcom/android/phone/settings/AutoIpExceptionSetting;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/settings/AutoIpExceptionSetting$ModeCallback;->this$0:Lcom/android/phone/settings/AutoIpExceptionSetting;

    const v3, 0x7f0b040e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/settings/AutoIpExceptionSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/settings/AutoIpExceptionSetting$ModeCallback$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/phone/settings/AutoIpExceptionSetting$ModeCallback$1;-><init>(Lcom/android/phone/settings/AutoIpExceptionSetting$ModeCallback;[JLandroid/view/ActionMode;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 334
    :cond_0
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 285
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 292
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 287
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/settings/AutoIpExceptionSetting$ModeCallback;->delete(Landroid/view/ActionMode;)V

    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 272
    iget-object v1, p0, Lcom/android/phone/settings/AutoIpExceptionSetting$ModeCallback;->this$0:Lcom/android/phone/settings/AutoIpExceptionSetting;

    sget v2, Lmiui/R$attr;->actionBarDeleteIcon:I

    invoke-static {v1, v2}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 273
    .local v0, "delDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x2

    const v2, 0x7f0b03dc

    invoke-interface {p2, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 275
    return v4
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 297
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 302
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    .line 303
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 280
    const/4 v0, 0x1

    return v0
.end method
