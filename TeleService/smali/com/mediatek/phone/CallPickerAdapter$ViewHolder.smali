.class Lcom/mediatek/phone/CallPickerAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CallPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/phone/CallPickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field mDisplayName:Landroid/widget/TextView;

.field mOperator:Landroid/widget/TextView;

.field mPhoneNumber:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/mediatek/phone/CallPickerAdapter;


# direct methods
.method private constructor <init>(Lcom/mediatek/phone/CallPickerAdapter;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/mediatek/phone/CallPickerAdapter$ViewHolder;->this$0:Lcom/mediatek/phone/CallPickerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/phone/CallPickerAdapter;Lcom/mediatek/phone/CallPickerAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/phone/CallPickerAdapter;
    .param p2, "x1"    # Lcom/mediatek/phone/CallPickerAdapter$1;

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/mediatek/phone/CallPickerAdapter$ViewHolder;-><init>(Lcom/mediatek/phone/CallPickerAdapter;)V

    return-void
.end method
