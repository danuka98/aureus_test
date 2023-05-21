import 'package:aureus/components/add_doc_component.dart';
import 'package:aureus/components/document_details_component.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class UploadingDocument extends StatelessWidget {
  const UploadingDocument({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 2.h, bottom: 1.6.h),
          child: AddDocComponent(
            labelName: 'Resume',
            description: 'Remember to include your most updated resume',
            onPressed: () {},
          ),
        ),
        const DocumentDetailsComponent(
          documentName: 'My Resume.pdf',
          date: '11/06/20',
        ),
        Container(
          margin: EdgeInsets.only(top: 2.h, bottom: 1.6.h),
          child: AddDocComponent(
            labelName: 'Cover Letter',
            description: 'Stand out with your cover letter',
            onPressed: () {},
          ),
        ),
        const DocumentDetailsComponent(
          documentName: 'My cover letter final.doc',
          date: '11/06/20',
        ),
        Container(
          margin: EdgeInsets.only(top: 1.h),
          child: const DocumentDetailsComponent(
            documentName: 'My cover letter.doc',
            date: '06/06/20',
            isSelected: false,
          ),
        ),
      ],
    );
  }
}
